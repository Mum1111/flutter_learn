import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/cabinet.dart';
import 'package:flutter_learn/pages/dicePage.dart';
import 'package:flutter_learn/pages/quizz.dart';
import 'package:flutter_learn/pages/signin.dart';
import 'package:flutter_learn/pages/xylophone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      routes: {
        "sign_in": (context) => const SignIn(name: 'tim'),
        "cabinet": (context) => const Cabinet(),
        "dice": (context) => const DicePage(),
        "xylophone": (context) => const Xylophone(),
        "quizz": (context) => const Quizzer(),
        '/': (context) => const MyHomePage(title: "flutter")
      },
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

  void _incrementCounter() {
    setState(() {
      _counter++;
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
              style: TextStyle(color: Colors.amber),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'sign_in');
                },
                child: const Text('去登录')),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'xylophone');
                },
                child: const Text('木琴啊')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'dice');
                },
                child: const Text('掷骰子')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'quizz');
                },
                child: const Text('问答')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'cabinet');
                },
                child: const Text("陈列馆"))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: const Icon(Icons.add, color: Colors.white, size: 48),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
