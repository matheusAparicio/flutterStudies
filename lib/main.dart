import 'package:flutter/material.dart';
import 'package:estudos_flutter1/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Studies',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


