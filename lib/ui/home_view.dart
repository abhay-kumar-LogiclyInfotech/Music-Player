import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:responsive_app/ui/sidebar_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Create a GlobalKey for ScaffoldState
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [theme.colorScheme.primary, theme.colorScheme.secondary.withOpacity(0.3)],
            ),
          ),
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          // NOTICE: Uncomment if you want to add shadow behind the page.
          // Keep in mind that it may cause animation jerks.
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 0.0,
          //   ),
          // ],
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: const SidebarView(),
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            elevation: 1,
            shadowColor: theme.colorScheme.onSurfaceVariant,
            surfaceTintColor: theme.colorScheme.onSurfaceVariant,
            title: Text("Welcome To Master Academy", style: theme.textTheme.bodySmall),
            centerTitle: true,
            leading: IconButton(
                icon:  Icon(Icons.menu,color: theme.iconTheme.color),
                onPressed: () {
                  // _scaffoldKey.currentState?.openDrawer();
                  _advancedDrawerController.showDrawer();
                }),
            backgroundColor: theme.appBarTheme.backgroundColor,
            actions: [
              IconButton(
                icon:  Icon(Icons.search,color: theme.iconTheme.color),
                onPressed: () {
                  // TODO: Implement search functionality
                },
              ),
              IconButton(
                icon:  Icon(Icons.notifications,color: theme.iconTheme.color),
                onPressed: () {
                  // TODO: Implement notifications functionality
                },
              ),
              IconButton(
                icon:  Icon(Icons.person,color: theme.iconTheme.color),
                onPressed: () {
                  // TODO: Implement user profile functionality
                },
              ),
            ],
          ),
        ));
  }
}