import 'package:flutter/material.dart';

class CounterAppPage extends StatefulWidget {
  const CounterAppPage({super.key});

  @override
  State<CounterAppPage> createState() => _CounterAppPageState();
}

class _CounterAppPageState extends State<CounterAppPage> {

  int _count = 0;

  void _incrementCounter() => setState(() => _count+=1); 
  void _decrementCounter() => setState(() => _count-=1); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Counter App"), centerTitle: true),
        body: Center(
          child: Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [Text("Counter"), SizedBox(height:20), Text(_count.toString(), style: TextStyle(fontSize:30))],)
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ FloatingActionButton(
                onPressed: () => _decrementCounter(), 
                backgroundColor: Colors.red, 
                child: Icon(Icons.remove)),
              FloatingActionButton(
                onPressed: () => _incrementCounter(), 
                backgroundColor: Colors.blue, 
                child: Icon(Icons.add)),
            ],
          ),
        ));
  }
}
