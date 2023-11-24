import 'package:flutter/material.dart';
import 'package:flutter_weather_forcast29092023/base/base_widget.dart';
import 'package:flutter_weather_forcast29092023/common/widget/loading_widget.dart';
import 'package:flutter_weather_forcast29092023/data/api/api_service.dart';
import 'package:flutter_weather_forcast29092023/data/model/weather.dart';
import 'package:flutter_weather_forcast29092023/data/repository/weather_repository.dart';
import 'package:flutter_weather_forcast29092023/presentation/home/home_bloc.dart';
import 'package:flutter_weather_forcast29092023/presentation/home/home_event.dart';
import 'package:flutter_weather_forcast29092023/util/message_util.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      providers: [
        Provider(create: (context) => ApiService()),
        ProxyProvider<ApiService, WeatherRepository>(
          create: (context) => WeatherRepository(),
          update: (context, apiService, repository) {
            repository?.setApiService(apiService);
            return repository ?? WeatherRepository();
          },
        ),
        ProxyProvider<WeatherRepository, HomeBloc>(
          create: (context) => HomeBloc(),
          update: (context, repository, bloc) {
            bloc?.setWeatherRepository(repository);
            return bloc ?? HomeBloc();
          },
        ),
      ],
      appBar: AppBar(
        title: Text("Home page", style: TextStyle()),
      ),
      child: HomePageWidget()
    );
  }
}


class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {

  late HomeBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read();
    _bloc.messageStream.listen((message) {
      MessageUtil.showMessage(
          context,
          "Exception",
          message,
          [
            TextButton(onPressed: () { Navigator.pop(context); }, child: Text("OK"))
          ]
      );
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc.eventSink.add(GetWeatherFromCityEvent("Hanoi"));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          constraints: BoxConstraints.expand(),
          child: StreamBuilder<Weather>(
            initialData: null,
            stream: _bloc.weatherController.stream,
            builder: (context, snapshot){
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else if (snapshot.hasData) {
                return Center(
                  child: Text(snapshot.data?.temp.toString() ?? "", style: TextStyle(fontSize: 30)),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
        LoadingWidget(bloc: _bloc)
      ],
    );
  }
}
