import 'dart:async';
import 'package:rxdart/subjects.dart';

class HomePageBLoC {
  final _streamController = BehaviorSubject<int>.seeded(0);

  static final instance = HomePageBLoC._();

  HomePageBLoC._();

  Stream<int> get outCount => _streamController.stream;

  increment() {
    _streamController.sink.add(_streamController.value + 1);
  }

  decrement() {
    _streamController.sink.add(_streamController.value - 1);
  }

  dispose() {
    _streamController.close();
  }
}
