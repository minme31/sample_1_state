import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverPodCounterProvider =
    StateNotifierProvider<RiverPodCounterNotifier, int>((ref) {
  return RiverPodCounterNotifier();
});

class RiverPodCounterNotifier extends StateNotifier<int> {
  RiverPodCounterNotifier() : super(0);

  void increment() {
    state++;
  }
}
