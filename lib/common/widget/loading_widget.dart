import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forcast29092023/base/base_bloc.dart';
import 'package:provider/provider.dart';

class LoadingWidget extends StatelessWidget {
  final BaseBloc bloc;

  LoadingWidget({
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return StreamProvider<bool>.value(
      value: bloc.loadingStream,
      initialData: false,
      child: Stack(
        children: <Widget>[
          Consumer<bool>(
            builder: (context, isLoading, child) => Center(
              child: isLoading
                  ? IgnorePointer(
                      ignoring: false,
                      child: Container(
                        constraints: const BoxConstraints.expand(),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(50, 204, 207, 205),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(
                              color: Colors.blue,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}
