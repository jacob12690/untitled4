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
        primarySwatch: Colors.yellow,
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
        title: Text('可達'),
        centerTitle: true,
      ),

      body: Container(
        margin: EdgeInsets.only(left: 80, top: 10, right: 80),
        alignment: Alignment.center,
        height: 300,
        width:300,
        decoration: new BoxDecoration(//背景
          color: Colors.grey, //设置四周圆角 角度
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: new Border.all(width: 1, color: Colors.grey),
        ),
        child: Image.network(
          'https://image1.gamme.com.tw/news2/2022/76/44/qZqVpJ_Wk5_cqqQ.jpg',
        ),
      ),

      ///////////////////下方切換紐//////////////////////
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.event_outlined),
          label: '月曆',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
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
            ),
          ],
        ),
      ),
      ////////////////////////////////////////////////

    );
  }
}
