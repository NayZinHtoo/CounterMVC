import 'package:counter_project/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/counter_controller.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CounterController _con = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_con.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(_con.increment);
              Provider.of<CounterProvider>(context, listen: false).update(_con.count);
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              setState(_con.decrement);
              Provider.of<CounterProvider>(context, listen: false).update(_con.count);
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
