import 'package:app_theme/mytheme.dart';
import 'package:app_theme/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeService>(
      create: (context) => ThemeService(),
      child: Consumer(
      builder: (context, ThemeService theme, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme.darkTheme! ? darkTheme : lightTheme,
          home: HomePage(),
        );
      })
    );
  }
}


