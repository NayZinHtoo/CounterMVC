import 'package:counter_project/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CounterController>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.count.toString(),
              style: const TextStyle(fontSize: 60),
            ),
            const SizedBox(width: 5.0),
          ],
        ),
      ),
    );
  }
}
