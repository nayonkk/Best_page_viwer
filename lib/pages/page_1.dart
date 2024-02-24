import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page_1 extends StatelessWidget {
  const page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/home1.jpg'),fit: BoxFit.cover)),
      ),
    );
  }
}
