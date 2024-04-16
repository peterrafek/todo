

import 'package:flutter/material.dart';
import 'package:todo/utils/app-colors.dart';

abstract class AppTheme{
  static const TextStyle taskTitleTextStyle =TextStyle(
   fontSize: 22,fontWeight: FontWeight.bold,color: AppColors.Primiary
  );
  static const TextStyle bottomSheetTitleTextStyle =TextStyle(
      fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.Black
  );
  static const TextStyle taskDescriptionTextStyle =TextStyle(
      fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black
  );
  static ThemeData LightTheme= ThemeData(
    primaryColor: AppColors.Primiary,
        appBarTheme: AppBarTheme(
            backgroundColor:
            AppColors.Primiary,
          elevation: 0,


  ),floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.Primiary),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 32),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.Primiary,
      unselectedItemColor: AppColors.gray,

    ),
    scaffoldBackgroundColor: AppColors.accent,
    dividerTheme: DividerThemeData(color: AppColors.Primiary,thickness: 3),

  );

}