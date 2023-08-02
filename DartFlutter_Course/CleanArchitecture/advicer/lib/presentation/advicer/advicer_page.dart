import 'package:advicer/presentation/advicer/widgets/advice_field.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_button.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Advicer", style: themeData.textTheme.headlineLarge)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: AdviceField(advice: "IWas"),
                ),
              ),
              SizedBox(
                height: 200,
                child: Center(
                  child: CustomButton(
                    onPressed: () {
                      print("b");
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
