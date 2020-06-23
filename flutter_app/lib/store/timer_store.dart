import 'package:mobx/mobx.dart';

part 'timer_store.g.dart'

class Timer extends _Timer {}

abstract class _Timer with Store {
  @observable
  int secondPass = 0;
  @observable
  bool isActive = false;

  @action
  void handleClick(){
    if (isActive) {
      secondPass = secondPass + 1;
    } 
  }
}


// class Timer{
//   final secondPass = 0;
//   final isActive = false;

//   int get _secondPass = secondPass;
//   bool get _isActive = isActive;

//   set secondPass(int newSecond) => secondPass = newSecond;

//   Timer timer;

//   void handleClick() {
//     if (isActive) {
//       setSecond
//     }
//   }

// }