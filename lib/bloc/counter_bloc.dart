

import 'package:app_bloc/states/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../events/counter_events.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterInitial()){
    on<IncrementEvent> ((event, emit) {
      if (state is CounterUpdate) {
        emit(CounterUpdate((state as CounterUpdate).count + 1));
      } else {
        emit(CounterUpdate(1));
      }
    });
    //
    on<DecrementEvent>((event, emit) {
      if (state is CounterUpdate) {
        emit(CounterUpdate((state as CounterUpdate).count - 1));
      } else {
        emit(CounterUpdate(-1));
      }
    });
  }

  // @override
  // Stream<CounterState> mapEventToState(CounterEvent event) async*
  // {
  //   if (event is IncrementEvent) {
  //     if (state is CounterUpdate) {
  //       yield CounterUpdate((state as CounterUpdate).count + 1);
  //     } else {
  //       yield CounterUpdate(1);
  //     }
  //   } else if (event is DecrementEvent) {
  //     if (state is CounterUpdate) {
  //       yield CounterUpdate((state as CounterUpdate).count - 1);
  //     } else {
  //       yield CounterUpdate(-1);
  //     }
  //   }
  // }
}