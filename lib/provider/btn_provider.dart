import 'package:flutter/material.dart';

class IndexBtnProvider with ChangeNotifier {
  int _index = 0;

  int get getIndex => _index;

  void changeIndex(int newIndex) {
    _index = newIndex;
    notifyListeners(); // 通知UI刷新
  }
}
