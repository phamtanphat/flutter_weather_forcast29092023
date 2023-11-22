import 'package:rxdart/rxdart.dart';

void main() {
  // 1: Chỉ lắng nghe các giá trị chưa lắng nghe
  // PublishSubject<int> subject = PublishSubject<int>();
  // subject.stream.listen((value) {
  //   print("Listen1: $value");
  // });
  // subject.add(1);
  // subject.add(2);
  //
  // subject.stream.listen((value){
  //   print("Listen2: $value");
  // });
  // subject.add(3);

  // 2: Lắng nghe giá trị cuối cùng phát ra và các giá trị mới
  // BehaviorSubject<int> subject = BehaviorSubject<int>();
  // subject.stream.listen((value) {
  //   print("Listen1: $value");
  // }); // prints 1,2,3
  // subject.add(1);
  // subject.add(2);
  // subject.add(3);
  //
  // subject.stream.listen((value) {
  //   print("Listen2: $value");
  // }); // prints 3
  //
  // subject.add(4);

  // 3: Lắng nghe các giá trị như nhau
  // ReplaySubject<int> subject = ReplaySubject<int>();
  //
  // subject.add(1);
  // subject.add(2);
  // subject.add(3);
  //
  // subject.stream.listen(print); // prints 1, 2, 3
  // subject.stream.listen(print); // prints 1, 2, 3
  //
  // subject.add(4);
  // subject.add(5);
}