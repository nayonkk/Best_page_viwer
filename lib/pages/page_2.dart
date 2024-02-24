import 'package:flutter/material.dart';


class page_2 extends StatelessWidget {
  const page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor: Colors.teal,
          body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/home2.jpg'),fit: BoxFit.cover)),
      ),
    );
  }
}