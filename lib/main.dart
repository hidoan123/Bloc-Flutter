
import 'package:app_bloc/bloc/counter_bloc.dart';
import 'package:app_bloc/states/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events/counter_events.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
        create: (BuildContext context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'bloc app',
        home: AppHome(),
      ),
    );
  }
}

class AppHome extends StatelessWidget{
  const AppHome({super.key});
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bloc'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(onPressed: (){
              counterBloc.add(IncrementEvent());
            }, child: const Icon(Icons.add)),
            const SizedBox(width: 20,),
           BlocBuilder<CounterBloc, CounterState>(
             builder: (context, state){
               if (state is CounterUpdate) {
                 return Text('Count: ${state.count}');
               }
               return const Text('Loading...');
             },
           ),
            const SizedBox(width: 20,),
            ElevatedButton(onPressed: (){
              counterBloc.add(DecrementEvent());
            }, child: const Icon(Icons.remove)),

          ],
        ),
      ),
    );
  }
  
}







