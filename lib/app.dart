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
          title: Text('GeeksForGeeks'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: SizedBox(
            width: 200.0,
            height: 150.0,
            child: AutoSizeText(
              'សារៈសំខាន់នៃគណនេ្យ គឺផ្តល់នូវព័ត៌មានអំពីអ្វីដែលជាកម្មសិទ្ធ (គឺទ្រព្យសកម្ម) របស់អង្គភាពអាជីវកម្មមាន អ្វីដែលអង្គភាពអាជីវកម្មជំពាក់គេ (បំណុល) និងថាតើអង្គភាពអាជីវកម្មចាត់ចែងគ្រប់គ្រងនូវអ្វីដែលខ្លួនមាន និងជំពាក់គេយ៉ាងដូចម្តេច?',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 6,
            ),
          ),
        ),
      ),
    );
  }
}
