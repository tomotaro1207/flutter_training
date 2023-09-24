import 'package:flutter/material.dart';
import 'package:training/box.dart';
import 'package:training/Text_field_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Textfieldpage(),
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
  int _counter = 0;
  int _counter2 = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _doubleCounter() {
    setState(() {
      _counter2 = _counter2 * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Box(counter: _counter, x: 2),
                Box(counter: _counter, x: 2),
                Box(counter: _counter, x: 2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Box(counter: _counter, x: 2),
                Box(counter: _counter, x: 2),
                Box(counter: _counter, x: 2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Box(counter: _counter, x: 2),
                Box(counter: _counter, x: 2),
                Box(counter: _counter, x: 2),
              ],
            ),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: _doubleCounter,
              style: TextButton.styleFrom(
                fixedSize: const Size(300, 30),
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.black,
              ),
              child: Text('ここをタップ'),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
                'BOTTOM APP'),
            Text(style: TextStyle(color: Colors.white), 'FORM'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
