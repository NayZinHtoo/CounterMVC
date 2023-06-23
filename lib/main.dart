import 'package:flutter/material.dart';
import './providers/counter_provider.dart';
import 'package:provider/provider.dart';
import '../pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider.value(value: CounterProvider())],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Counter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(
              title: 'Home Page',
            )));
  }
}
