import 'package:flutter/material.dart';
// import 'package:flutter_application_2/app.dart';
// import 'package:flutter_application_2/screen/home.dart';
import 'package:flutter_application_2/screen/test.dart';

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
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red,
        ),
        appBarTheme: AppBarTheme(foregroundColor: Colors.white),
        brightness: Brightness.light,
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          secondary: Colors.amber,
        ),
        fontFamily: 'AlfaSlabOne',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Tagesschrift'),
        ),
      ),
      home: Test(),
    );
  }
}
