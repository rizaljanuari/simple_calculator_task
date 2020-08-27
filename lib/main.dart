import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double num1, num2, sum = 0;

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void doAddition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  void doMod() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 % num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: Text(
                '$sum',
                style: TextStyle(
                  fontSize: 60,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                style: TextStyle(fontSize: 28),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Angka Pertama',
                  border: InputBorder.none,
                ),
                controller: t1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                style: TextStyle(fontSize: 28),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Angka Kedua', border: InputBorder.none),
                controller: t2,
              ),
            ),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: doAddition,
                  child: CircleAvatar(
                    radius: 36.0,
                    child: Text(
                      '+',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  onTap: doSub,
                  child: CircleAvatar(
                    radius: 36.0,
                    child: Text(
                      '-',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  onTap: doMul,
                  child: CircleAvatar(
                    radius: 36.0,
                    child: Text(
                      'x',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: doDiv,
                  child: CircleAvatar(
                    radius: 36.0,
                    child: Text(
                      '/',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  onTap: doMod,
                  child: CircleAvatar(
                    radius: 36.0,
                    child: Text(
                      '%',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  onTap: doClear,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellowAccent,
                    radius: 36.0,
                    child: Text(
                      'Clear',
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
