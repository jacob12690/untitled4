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
<<<<<<< HEAD
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
=======
        title: Text('可達'),
        centerTitle: true,
      ),
      body: Container(
        child: Image.network(
            'https://image1.gamme.com.tw/news2/2022/76/44/qZqVpJ_Wk5_cqqQ.jpg'
        ),
      ),

    ///////////////////下方切換紐//////////////////////
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.event_outlined),
>>>>>>> 418ff74 (Initial commit)
          label: '月曆',
          tooltip: '',
        ),
        BottomNavigationBarItem(
<<<<<<< HEAD
          icon: Icon(Icons.home),
=======
          icon: Icon(Icons.home_outlined),
>>>>>>> 418ff74 (Initial commit)
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
<<<<<<< HEAD
              leading: Icon(Icons.access_alarm),
              title: Text('Alarm'),
=======
              leading: Icon(Icons.perm_identity_outlined),
              title: Text('user'),
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_calendar_outlined),
              title: Text('ａ'),
            ),
            ListTile(
              leading: Icon(Icons.currency_exchange_outlined),
              title: Text('ｂ'),
            ),
            ListTile(
              leading: Icon(Icons.sensors_outlined),
              title: Text('ｃ'),
>>>>>>> 418ff74 (Initial commit)
            ),
          ],
        ),
      ),
<<<<<<< HEAD
      ///////////////////////////////////////////
=======
      ////////////////////////////////////////////////

>>>>>>> 418ff74 (Initial commit)
    );

  }
}
