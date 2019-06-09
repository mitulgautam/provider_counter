import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get getCount => _count;

  set count(int value) {
    _count = value;
    notifyListeners();
  }

  increment() {
    count=_count+1;
   // ++_count;

  }

  decrement() {
    count=_count-1;

  }
  multiply(){
    count=_count*2;

  }
}
