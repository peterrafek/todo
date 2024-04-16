import 'package:flutter/material.dart';
import 'package:todo/screens/home/home-screen.dart';
import 'package:todo/utils/app-theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(),
      theme: AppTheme.LightTheme,
       routes: {
        HomeScreen.routeName:(_) => HomeScreen(),
       },
      initialRoute: HomeScreen.routeName,
    );
  }
}
