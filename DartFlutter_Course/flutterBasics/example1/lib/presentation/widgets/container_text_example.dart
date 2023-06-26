import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.black, width:5),
        borderRadius: BorderRadius.circular(10)
      ),
    child: Center(
      child: Material(
        borderRadius: BorderRadius.circular(20),
        //Makes a shadow
        elevation: 15,
        child: Container(
         //Aligns content at center          
         alignment: Alignment.center,
         height: 100,
         width: 200,
         decoration: BoxDecoration(
           color: Colors.orange,
           borderRadius: BorderRadius.circular(20), 
         ),
        child: Text("Hello")
        ),
      ),
    )
    );
  }
}
