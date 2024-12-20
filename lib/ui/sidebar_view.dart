import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SidebarView extends StatefulWidget {
  const SidebarView({super.key});

  @override
  State<SidebarView> createState() => _SidebarViewState();
}

class _SidebarViewState extends State<SidebarView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
        child: Container(
            child: ListTileTheme(
                textColor: theme.textTheme.bodySmall?.color,
                iconColor: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        width: 128.0,
                        height: 128.0,
                        margin: const EdgeInsets.only(
                          top: 24.0,
                          bottom: 64.0,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Colors.black26,
                          shape: BoxShape.circle,
                        ),
                        child:  Image.network(fit: BoxFit.cover,"https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?a=1&b=1&s=612x612&w=0&k=20&c=u5RPl326UFf1oyrM1iLFJtqdQ3K28TdBdSaSPKeCrdc=")
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.home,color: theme.iconTheme.color,),
                      title: Text('Home'),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.account_circle_rounded,color: theme.iconTheme.color,),
                      title: Text('Profile'),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.favorite,color: theme.iconTheme.color,),
                      title: Text('Favourites'),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.settings,color: theme.iconTheme.color,),
                      title: Text('Settings'),
                    ),
                    const Spacer(),
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.textTheme.bodySmall?.color,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 16.0,
                        ),
                        child: const Text('Powered By | Master Academy'),
                      ),
                    ),
                  ],
                ))));
  }
}
