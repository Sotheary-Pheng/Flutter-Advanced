import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RotateTransition extends StatelessWidget {
  const RotateTransition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('GeeksForGeeks'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text("Rotate Transition Button"),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.bounceInOut,
                    type: PageTransitionType.rotate,
                    alignment: Alignment.topCenter,
                    child: SecondPage(title: ''),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String title;
  const SecondPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args as String? ?? "Page Transition Plugin"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text("Second Page")),
    );
  }
}
