import 'dart:async';

class HomePageBLoC {
  int _count = 0;
  var _streamController = StreamController<int>();

  Stream<int> get outCount => _streamController.stream;

  increment() {
    _count++;
    _streamController.sink.add(_count);
  }

  decrement() {
    _count--;
    _streamController.sink.add(_count);
  }

  dispose() {
    _streamController.close();
  }
}