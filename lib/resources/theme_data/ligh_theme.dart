
import 'package:flutter/material.dart';
final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white).copyWith(primary: Colors.white),
    useMaterial3: true,
    textTheme:  TextTheme(bodySmall: TextStyle(color: Colors.black.withOpacity(0.7))),
    iconTheme:   IconThemeData(color: Colors.black.withOpacity(0.7)),
    appBarTheme:  const AppBarTheme(backgroundColor: Colors.white,titleTextStyle:  TextStyle(color: Colors.black,fontSize: 20)),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
    listTileTheme:  ListTileThemeData(
        tileColor: Colors.black.withOpacity(0.2),
        textColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        titleAlignment: ListTileTitleAlignment.center

    )
);