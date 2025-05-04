import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/argument_namedroute.dart';
// import 'package:flutter_application_2/screen/name_routes.dart';

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
      //Argument in Named Route.......
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as Arguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        assert(false, 'Implemention for ${settings.name} is missing.');
        return null;
      },
      home: ArgumentNamedroute(),
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      },

      //name Route...........
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const NameRoutes(),
      //   '/second': (context) => const SecondRoute(),
      // },
    );
  }
}
