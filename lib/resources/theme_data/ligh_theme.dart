
import 'package:flutter/material.dart';
final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white).copyWith(primary: Colors.white),
    useMaterial3: true,
    textTheme:  TextTheme(bodySmall: TextStyle(color: Colors.black.withOpacity(0.7))),
    iconTheme:   IconThemeData(color: Colors.black.withOpacity(0.7)),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white)
);