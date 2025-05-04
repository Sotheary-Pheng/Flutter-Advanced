import 'package:flutter/material.dart';

class ArgumentNamedroute extends StatelessWidget {
  const ArgumentNamedroute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GeeksForGeeks"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: Arguments(
                    'Extract Argument Screen',
                    'Extract in the build method....',
                  ),
                );
              },
              child: Text("Extract arguments"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: Arguments(
                    'Accept Argument Screen',
                    'Extract in the onGenerteRoute function....',
                  ),
                );
              },
              child: Text("Accept arguments"),
            ),
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  const ExtractArgumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Arguments args =
        ModalRoute.of(context)!.settings.arguments as Arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.black,
      ),
      body: Center(child: Text(args.message)),
    );
  }
}

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArgument';

  final String title;
  final String message;

  const PassArgumentsScreen({
    super.key,
    required this.title,
    required this.message,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      body: Center(child: Text(message)),
    );
  }
}

class Arguments {
  final String title;
  final String message;
  Arguments(this.title, this.message);
}
