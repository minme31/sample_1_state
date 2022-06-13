import 'package:flutter/material.dart';
import 'package:sample_1_state/pages/getx_counter_page.dart';
import 'package:sample_1_state/pages/riverpod_counter_page.dart';
import 'package:sample_1_state/pages/stateful_counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectPage(),
    );
  }
}

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const MyHomePage(title: 'StatefulWidget'),
                ),
              );
            },
            child: const Text('StatefulWidget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const GetXCounterPage(),
                ),
              );
            },
            child: const Text('GetX'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const RiverPodCounterPage(),
                ),
              );
            },
            child: const Text('RiverPod'),
          ),
        ],
      ),
    );
  }
}
