
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ThemeSwitcher extends ChangeNotifier{
    ThemeData _themeData;

    ThemeSwitcher(this._themeData);

    currentTheme() => _themeData;

    setTheme(ThemeData themeData){
      _themeData = themeData;
      notifyListeners();
    }
}