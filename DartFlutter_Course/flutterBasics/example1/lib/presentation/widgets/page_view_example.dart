import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*0.3,
      child: PageView(
        physics: BouncingScrollPhysics(),
        controller: PageController(viewportFraction: 0.95),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.85,
              color: Colors.red,
            ),
          ),
          Container(
            height: size.height * 0.3,
            width: size.width * 0.85,
            color: Colors.yellow
          ),
        ]
      ),
    );
  }
}