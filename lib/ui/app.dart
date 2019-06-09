import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/providers/CounterProvider.dart';
import 'package:provider_counter/ui/dashboard.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider<CounterProvider>(
      builder: (_) => CounterProvider(),
      child: Dashboard(),
    ));
  }
}
