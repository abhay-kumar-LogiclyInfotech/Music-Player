import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_app/bloc/counter/counter_bloc.dart';
import 'package:responsive_app/bloc/counter/counter_event.dart';
import 'package:responsive_app/bloc/counter/counter_state.dart';
import 'package:responsive_app/ui/examples/counter_view.dart';
import 'package:responsive_app/ui/examples/switch_example_view.dart';

import '../services/equatable_example.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _buildUi(theme:theme),
      floatingActionButton: FloatingActionButton(
          backgroundColor: theme.primaryColor,
          child: Icon(Icons.telegram,color: theme.iconTheme.color,),
          onPressed: (){
            Person person =  const Person(name: "Abhay",age: 10);
            Person person1 =  const Person(name: "Abhay",age: 10);
            debugPrint(person.hashCode.toString());
            debugPrint(person1.hashCode.toString());
            print(person1 == person);

          }),
    );
  }

  Widget _buildUi({required ThemeData theme}) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      children: [
        _customListTile(
          theme: theme,
          title: "Counter View",
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CounterView()));
          }
        ),
        _customListTile(
            theme: theme,
            title: "Switch Example View",
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SwitchExampleView()));
            }
        ),
      ],
    );
  }

  Widget _customListTile({required theme,required title,required dynamic onTap}){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        tileColor: theme.listTileTheme.tileColor,
        textColor: theme.listTileTheme.textColor,
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}
