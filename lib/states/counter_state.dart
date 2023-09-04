
abstract class CounterState {}

class CounterInitial extends CounterState{}

class CounterUpdate extends CounterState
{
  final int count;
  CounterUpdate(this.count);
}