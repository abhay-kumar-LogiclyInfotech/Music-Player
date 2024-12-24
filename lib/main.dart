import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_app/bloc/counter/counter_bloc.dart';
import 'package:responsive_app/resources/theme_data/dark_theme.dart';
import 'package:responsive_app/resources/theme_data/ligh_theme.dart';
import 'package:responsive_app/ui/sidebar_view.dart';

import 'ui/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterBloc(),
        child: MaterialApp(
            title: 'Master App',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.system,
            home: const MainView()));
  }
}
