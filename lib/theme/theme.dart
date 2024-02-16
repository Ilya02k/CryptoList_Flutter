import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
        primarySwatch: Colors.amber,
        dividerColor: Colors.red,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.white
            ),
          labelSmall: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w700,
               fontSize: 14
          )
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.purple,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 16))
);