import 'package:flutter/material.dart';


class page_4 extends StatelessWidget {
  const page_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.grey,
          body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/home4.jpg'),fit: BoxFit.cover)),
      ),
    );
  }
}