import 'package:flutter/material.dart';

class donePage extends StatelessWidget {
  const donePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

    // backgroundColor: Colors.amber,
     body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/nnn.jpg'),fit: BoxFit.cover)),
      ),

    );
  }
}