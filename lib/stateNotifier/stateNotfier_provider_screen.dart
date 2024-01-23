// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnriverpod/stateNotifier/stateNotifier.dart';

// ************ State Notifier Provider ***************

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Notifier Example"),
      ),
      body: Column(
        children: [
          Consumer(builder: (context, ref, child) {
            final counterNotifier = ref.watch(counterStateNotifier);
            return Center(child: Text(counterNotifier.toString()));
          }),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateNotifier.notifier).decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterStateNotifier.notifier).increament();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
