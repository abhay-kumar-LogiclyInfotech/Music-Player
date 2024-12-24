import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_app/bloc/counter/counter_bloc.dart';
import 'package:responsive_app/bloc/counter/counter_event.dart';
import 'package:responsive_app/bloc/counter/counter_state.dart';

import '../../services/equatable_example.dart';


class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: _buildUi(),
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

  Widget _buildUi() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        BlocBuilder<CounterBloc,CounterState>(builder: (context,state){
          return Center(child: Text(state.count.toString(),style: const TextStyle(color: Colors.green,fontSize: 50,fontWeight: FontWeight.bold),));

        }),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCounterEvent());
              },color: Colors.red, child: const Text("Decrement",style: TextStyle(color: Colors.white)),),
              MaterialButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounterEvent());
              },color: Colors.green, child: const Text("Increment",style: TextStyle(color: Colors.white)),),
            ])
      ],
    );
  }
}
