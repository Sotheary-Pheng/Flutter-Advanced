import 'package:flutter/material.dart';
// import 'package:flutter_application_2/screen/lazy_loader.dart';
import 'package:flutter_application_2/screen/rotate_transition.dart';
import 'package:flutter_application_2/screen/routes.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appName = 'GeeksForGeeks';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Routes(),
    );
  }
}
