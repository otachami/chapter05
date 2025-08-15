import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int result1 = 1 + 2;
  int result2 = 6 - 2;
  int result3 = 2 * 3;
  int result4 = 10 ~/ 3;
  double result5 = 10 / 3;
  int result6 = 10 % 3;
  String title = 'こんにちは。' + '世界！';
  int result1Plus2 = 0;
  String title1 = '';
  String title2 = '';

  @override
  Widget build(BuildContext context) {
    result1Plus2 = result1 + result2;
    title1 = "result1 = $result1";
    title2 = "result2 = ${result2}";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('result1 =[$result1]'),
            Text('result2 =[$result2]'),
            Text('result3 =[$result3]'),
            Text('result4 =[$result4]'),
            Text('result5 =[$result5]'),
            Text('result6 =[$result6]'),
            Text('title =[$title]'),
            Text('resultPlus2 = [$result1Plus2]'),
            Text('title1 =[$title1]'),
            Text('title2 =[$title2]'),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
