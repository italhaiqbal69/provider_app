import 'package:flutter/cupertino.dart';

class CountProvider with ChangeNotifier{
    int _count =0;

    int get count=> _count;

    void increment(){
        _count++;
        notifyListeners();
    }

    List<String> lists=[];

    List get list=>lists;

    void newitem(){
        lists.add('talha');
        print(lists);
        notifyListeners();
    }


}