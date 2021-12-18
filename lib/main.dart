import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 1'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 2'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 3'),
      ),
      
    ]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Table'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Table(
         
            children: [
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
          ],),
        ),
      ),
    );
  }
}
