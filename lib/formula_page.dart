import 'package:floppa/quote.dart';
import 'package:flutter/material.dart';

class FormulaPage extends StatefulWidget {
  @override
  _FormulaPageState createState() => _FormulaPageState();
}

var favorite = [];

class _FormulaPageState extends State<FormulaPage> {
  bool i = true;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text('')),
      body: Column(),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: !i ? Colors.greenAccent : Colors.blue,
          onPressed: () {
            //favorite.add(widget.quote.text);

            setState(() {
              i = !i;
            });
          },
          label: Text(i ? 'Добавить  в избранное' : 'А избранном!'),
          icon: Icon(i ? Icons.star_border : Icons.star)),
    );
  }
}
