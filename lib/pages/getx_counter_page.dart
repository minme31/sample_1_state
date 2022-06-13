import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1_state/controllers/getx_counter_controller.dart';

class GetXCounterPage extends StatelessWidget {
  const GetXCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GetXCounterController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        return Center(
          child: Text(controller.counter.value.toString()),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
