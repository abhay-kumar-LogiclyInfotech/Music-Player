import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:responsive_app/bloc/counter/counter_event.dart';
import 'package:responsive_app/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{

  CounterBloc() : super(const CounterState()){
    on<IncrementCounterEvent>(_increment);
    on<DecrementCounterEvent>(_decrement);
  }

  void _increment(IncrementCounterEvent event, Emitter<CounterState> emit){
    emit(state.copyWith(count: state.count + 1));
  }

  void _decrement(DecrementCounterEvent event, Emitter<CounterState> emit){
    emit(state.copyWith(count: state.count - 1));
  }
}