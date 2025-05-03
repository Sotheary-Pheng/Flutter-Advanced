import 'package:auto_size_text/auto_size_text.dart' show AutoSizeText;
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: SizedBox(
            width: 200.0,
            height: 150.0,
            child: AutoSizeText(
              'Hello Geeks!. we wil break this line 3 lines !!!!!',
              style: TextStyle(fontSize: 30.0),
              maxLines: 3,
            ),
          ),
        ),
      ),
    );
  }
}
