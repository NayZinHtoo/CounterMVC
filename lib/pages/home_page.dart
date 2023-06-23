import 'package:counter_project/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value.count.toString(),
                  style: const TextStyle(fontSize: 60),
                ),
                const SizedBox(width: 5.0),
                TextButton(
                  child: const Text(
                    'Next Page',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CounterPage(title: 'Counter Page')),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
