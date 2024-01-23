// ignore_for_file: file_names

import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateNotifier = StateNotifierProvider((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier {
  CounterNotifier() : super(0);

  void increament() {
    state++;
  }

  void decrement() {
    state--;
  }
}
