import 'package:flutter/material.dart';


class page_3 extends StatelessWidget {
  const page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor: Colors.red,
          body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/home3.jpg'),fit: BoxFit.cover)),
      ),
    );
  }
}