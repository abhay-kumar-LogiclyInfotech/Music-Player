import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black).copyWith(primary: Colors.black),
    textTheme: const TextTheme(bodySmall: TextStyle(color: Colors.white)),
    iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor: MaterialStateProperty.resolveWith((state) {return Colors.white;}))),
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme:  AppBarTheme(backgroundColor: Colors.black.withOpacity(0.8),titleTextStyle: const TextStyle(color: Colors.white,fontSize: 20)),
    bottomAppBarTheme:  BottomAppBarTheme(color: Colors.black.withOpacity(0.8)),
  listTileTheme:  ListTileThemeData(
    tileColor: Colors.green,
    textColor: Colors.black,
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    titleAlignment: ListTileTitleAlignment.center

  )

);