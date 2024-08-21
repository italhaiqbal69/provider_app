
import 'package:flutter/cupertino.dart';

class SliderProvider with ChangeNotifier{
  double _value=1.0;

  double get value=>_value;

  void opacity(double value){
    _value=value;
    notifyListeners();
  }

}