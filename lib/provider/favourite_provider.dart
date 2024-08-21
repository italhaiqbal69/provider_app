

import 'package:flutter/cupertino.dart';

class FavouriteProvider with ChangeNotifier{

  List<int> _favourites=[];

  List<int> get favourites=>_favourites;

  void addItem(int value){
    _favourites.add(value);
    notifyListeners();
  }

  void removeItem(int value){
    _favourites.remove(value);
    notifyListeners();
  }




}