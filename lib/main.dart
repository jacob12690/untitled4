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

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '今日照片'),
    );
  }
}

////////////////////////////////////////////////////
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
////////////////////////////////////////////////////

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

          ],
        ),
      ),
    ///////////////////下方切換紐//////////////////////////
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '月曆',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '主頁',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '設定',
          tooltip: '',
        ),
      ],
    ),
      /////////////////側邊列//////////////////////////
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Alarm'),
            ),
          ],
        ),
      ),
      ///////////////////////////////////////////
    );

  }
}
