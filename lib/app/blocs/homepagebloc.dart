import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';

class HomePageBLoC extends BlocBase {
  final _streamController = BehaviorSubject<int>.seeded(0);

  Stream<int> get outCount => _streamController.stream;

  increment() {
    _streamController.sink.add(_streamController.value + 1);
  }

  decrement() {
    _streamController.sink.add(_streamController.value - 1);
  }

  @override
  dispose() {
    _streamController.close();
    super.dispose();
  }
}
