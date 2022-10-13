import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService with ChangeNotifier{
  SharedPreferences? sharedPreferences;
  bool? darkTheme;
  static String key = "key";


  ThemeService(){
    darkTheme = true;
    loadSp();
    // darkTheme =false;
  }

  initSp() async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  saveSp() async{
    await initSp();
    darkTheme = await sharedPreferences!.setBool(key, darkTheme!);
  }

  loadSp() async{
    await initSp();
    darkTheme = sharedPreferences!.getBool(key);
    notifyListeners();
  }

  toggleTheme(){
    darkTheme = !darkTheme!;  // data is true otherwise it will be false
    saveSp();
    notifyListeners();
  }
}