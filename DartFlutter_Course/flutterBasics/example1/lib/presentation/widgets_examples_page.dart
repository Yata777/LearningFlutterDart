import 'package:example1/presentation/widgets/container_text_example.dart';
import 'package:example1/presentation/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

import 'widgets/row_expanded_example.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 110, 186, 224),
        appBar: AppBar(
          leading: Icon(
            Icons.holiday_village,
            size: 40,
            color: Color.fromARGB(255, 2, 226, 40),
          ),
          title: Text("myApp"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              //Align y-axis at top
              mainAxisAlignment: MainAxisAlignment.start,
              //Align x-Axis at center
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ContainerTextExample(),
                SizedBox(height: 10),
                RowExpandedExample(),
                ProfilePicture(),
              ],
            ),
          ),
        ));
  }
}
