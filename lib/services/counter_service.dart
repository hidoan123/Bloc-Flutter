import 'dart:async';

class Counter
{
  int count = 0;
  StreamController counterController = StreamController();
  Sink get sink => counterController.sink;
  Stream get stream => counterController.stream;

  //void increase()
  increase()
  {
    count++;
    sink.add(count);
  }
  decrease()
  {
    count--;
    sink.add(count);
  }
}