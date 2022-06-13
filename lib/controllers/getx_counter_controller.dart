import 'package:get/get.dart';

class GetXCounterController extends GetxController {
  final counter = 0.obs;

  void increment() {
    counter.value = counter.value + 1;
  }
}
