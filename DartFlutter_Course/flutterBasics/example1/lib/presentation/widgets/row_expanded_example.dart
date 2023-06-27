import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(color: Colors.red, height: 100, width: 50),
        SizedBox(width:10),
        Expanded(child: Container(color: Colors.pink, height:100)),
        SizedBox(width:10),
        Container(color: Colors.yellow, height:100, width:50)
      ],
    );
  }
}