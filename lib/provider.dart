import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ************ Provider ***************

final stringProvider = Provider<String>((ref) => "Flutter With Hira");

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String myData = ref.read<String>(stringProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Screen")),
      body: Text(myData),
    );
  }
}
