import 'package:flutter/material.dart';
import 'package:provider_counter/providers/CounterProvider.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CounterProvider>(context);
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                data.increment();
              },
              child: Icon(Icons.exposure_plus_1),
            ),
            FloatingActionButton(
                onPressed: () {
                  data.decrement();
                },
                child: Icon(Icons.exposure_neg_1)),
            FloatingActionButton(child: Icon(Icons.star),onPressed: (){
              data.multiply();
            },)
          ],
        ),
        body: Center(
            child: Text(
          "${data.getCount}",
          style: TextStyle(fontSize: 64.0),
        )));
  }
}
