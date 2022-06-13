import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_1_state/controllers/riverpod_counter_provider.dart';

class RiverPodCounterPage extends StatelessWidget {
  const RiverPodCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Consumer(builder: (context, ref, _) {
            final counter = ref.watch(riverPodCounterProvider);
            return Text(counter.toString());
          }),
        ),
        floatingActionButton: Consumer(
          builder: (context, ref, _) {
            return FloatingActionButton(
              onPressed: () {
                ref.read(riverPodCounterProvider.notifier).increment();
              },
            );
          },
        ),
      ),
    );
  }
}
