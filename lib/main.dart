import 'package:bext_pages_viwer/screen_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Colors.teal,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home:const homepages(),
    );
  }
}
