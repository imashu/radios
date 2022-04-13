import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? _value1 = 0;
  int? _value2 = 0;

  void _setValue1(int? value) => setState(() => _value1 = value!);
  void _setValue2(int? value) => setState(() => _value2 = value!);

  Widget makeRadios() {
    List<Widget> list = <Widget>[];
    for (int i = 0; i < 3; i++) {
      list.add(new Radio(value: i, groupValue: _value1, onChanged: _setValue1));
    }
    Column column = Column(
      children: list,
    );
    return column;
  }

  Widget makeRadioTiles() {
    List<Widget> list = <Widget>[];

    for (int i = 0; i < 3; i++) {
      list.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: new Text('Item: ${i}'),
        subtitle: new Text('sub title${i}'),
      ));
    }

    Column column = new Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(children: <Widget>[
            makeRadios(),
            makeRadioTiles(),
          ]),
        ),
      ),
    );
  }
}
