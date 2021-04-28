import 'package:flutter/material.dart';
import 'package:flutter_sample/core/constant/app/app_constant.dart';
import 'app_theme.dart';
import 'light/light_theme_interface.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

  // ThemeData get theme => redTheme;
  @override
  ThemeData get theme => ThemeData(
        fontFamily: ApplicationConstants.FONT_FAMILY,
        colorScheme: _appColorScheme,
        textTheme: textTheme(),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
            brightness: Brightness.light,
            color: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black87, size: 21)),
        inputDecorationTheme: InputDecorationTheme(
            focusColor: Colors.red,
            labelStyle: TextStyle(),
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            filled: true,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            border: OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            focusedBorder: OutlineInputBorder()),
        scaffoldBackgroundColor: Colors.deepOrange.shade300,
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              colorScheme: ColorScheme.light(
                onError: Color(0xffFF2D55),
              ),
            ),
        tabBarTheme: tabBarTheme,
      );

  // InputDecoration get inputDecoration {
  //   return InputDecoration(
  //       border: InputBorder.none,
  //       focusedBorder: InputBorder.none,
  //       enabledBorder: InputBorder.none,
  //       errorBorder: InputBorder.none,
  //       disabledBorder: InputBorder.none,
  //       contentPadding:
  //           EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
  //       hintText: "Hint here");
  // }

  TabBarTheme get tabBarTheme {
    return TabBarTheme(
      labelPadding: insets.lowPaddingAll,
      labelColor: _appColorScheme.onSecondary,
      labelStyle: textThemeLight.headline5,
      unselectedLabelColor: _appColorScheme.onSecondary.withOpacity(0.2),
      // unselectedLabelStyle: textThemeLight.headline4.copyWith(color: colorSchemeLight.red),
    );
  }

  TextTheme textTheme() {
    return ThemeData.light().textTheme.copyWith(
        headline1: textThemeLight.headline1,
        headline2: textThemeLight.headline2,
        overline: textThemeLight.headline3);
  }

  ColorScheme get _appColorScheme {
    return ColorScheme(
        primary: colorSchemeLight.black,
        primaryVariant: Colors.white, //xx
        secondary: Colors.green,
        secondaryVariant: colorSchemeLight.azure,
        surface: Colors.blue, //xx
        background: Color(0xfff6f9fc), //xx
        error: Colors.red[900],
        onPrimary: Colors.greenAccent,
        onSecondary: Colors.black, //x
        onSurface: Colors.white30,
        onBackground: Colors.black12,
        onError: Color(0xFFF9B916), //xx
        brightness: Brightness.light);
  }
}


/*
ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Colors.grey[50],
              appBarTheme: AppBarTheme(
                  brightness: Brightness.light, color: Colors.white),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              iconTheme: const IconThemeData(color: Colors.black),
              textTheme: const TextTheme(
                  headline6: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold))),
 */