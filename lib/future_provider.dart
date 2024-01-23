import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ************ Future Provider ***************

Future<String> futureProviderFun() async {
  return await Future.delayed(const Duration(seconds: 3), () => "45");
}

final futureProvider = FutureProvider<String>((ref) => futureProviderFun());

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text("Future Provider")),
        body: ref.watch(futureProvider).when(data: (data) {
          return Center(child: Text(data));
        }, error: (e, stackTrace) {
          return Center(child: Text(e.toString()));
        }, loading: () {
          return const Center(child: CircularProgressIndicator());
        }));
  }
}
