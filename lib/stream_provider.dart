import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ************ Stream Provider ***************

Stream<int> streamProviderFun() {
  return Stream.periodic(const Duration(seconds: 3), (data) => data).take(200);
}

final streamProvider = StreamProvider<int>((ref) => streamProviderFun());

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamm = ref.watch(streamProvider);
    return Scaffold(
        appBar: AppBar(title: const Text("Stream Provider")),
        body: streamm.when(data: (data) {
          return Center(child: Text(data.toString()));
        }, error: (e, stackTrace) {
          return Center(child: Text(e.toString()));
        }, loading: () {
          return const Center(child: CircularProgressIndicator());
        }));
  }
}
