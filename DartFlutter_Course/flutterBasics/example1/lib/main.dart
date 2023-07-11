import 'package:example1/presentation/counter_app/widgets/counter_app_page.dart';
import 'package:example1/presentation/widgets_examples_page.dart';
import 'package:example1/root.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RootWidget()
    );
  }
}