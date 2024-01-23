// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ************ State Provider ***************

final counterProviderScreen = StateProvider<int>((ref) => 0);

class CounterProviderScreen extends ConsumerWidget {
  const CounterProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Screen")),
      body: Consumer(builder: (context, ref, child) {
        final counter = ref.watch(counterProviderScreen);
        return Center(child: Text(counter.toString()));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProviderScreen.state).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
