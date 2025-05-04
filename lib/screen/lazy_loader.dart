import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class LazyLoader extends StatefulWidget {
  const LazyLoader({super.key, required this.title});

  final String title;

  @override
  State<LazyLoader> createState() => _LazyLoaderState();
}

class _LazyLoaderState extends State<LazyLoader> {
  List<int> data = [];
  int currentLength = 0;
  final int incremen = 10;
  bool isloading = false;

  @override
  void initState() {
    _loadMore();
    super.initState();
  }

  Future _loadMore() async {
    setState(() {
      isloading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    for (var i = currentLength; i <= currentLength + incremen; i++) {
      data.add(i);
    }
    setState(() {
      isloading = false;
      currentLength = data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: LazyLoadScrollView(
              isLoading: isloading,
              onEndOfPage: () => _loadMore(),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, position) {
                  return DemoItem(position);
                },
              ),
            ),
          ),
          if (isloading)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CircularProgressIndicator(color: Colors.pinkAccent),
              ),
            ),
        ],
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  final int position;
  const DemoItem(this.position, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(color: Colors.pinkAccent, height: 40.0, width: 40.0),
                SizedBox(width: 8.0),
                Text("Item $position"),
              ],
            ),
            Text(
              "គណនេយ្យហិរញ្ញវត្ថុ គឺជាការផ្ដោតការយកចិត្តទុកដាក់ទៅលើការរាយ"
              "ការណ៍ពីសកម្មភាពអាជីវកម្មទៅកាន់អ្នកខាងក្រៅ"
              "ឬអ្នកដែលពុំបានចូលរួមដោយ ផ្ទាល់ក្នុងប្រតិបត្តិការប្រចាំថ្ងៃរបស់អង្គភាពអាជីវកម្ម។"
              "របាយការណ៍នេះជាទូទៅ គឺជារបាយការណ៍ហិរញ្ញវត្ថុ (Statement)"
              "ដែលរបាយការណ៍ទាំងរួមមាន ដូចជាៈ តារាងតុល្យការ",
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
