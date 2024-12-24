import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_dimensions.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
    const SimpleAppBar({super.key, this.title = "App Bar Title"});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.appBarTheme.backgroundColor,
      titleTextStyle: theme.appBarTheme.titleTextStyle,
      elevation: 5,
      shadowColor: theme.appBarTheme.backgroundColor,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize =>  const Size(double.infinity, AppDimensions.appBarHeight);
}
