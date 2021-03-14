import 'package:floppa/quote.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';
import 'main.dart';

class FormulaPage extends StatefulWidget {
  final Quote quote;

  const FormulaPage({Key key, this.quote}) : super(key: key);
  @override
  _FormulaPageState createState() => _FormulaPageState();
}

class _FormulaPageState extends State<FormulaPage> {
  bool i;

  @override
  void initState() {
    setState(() {
      i = listOfFavour.contains(widget.quote);
    });
    super.initState();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text('')),
      body: Column(),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: i ? Colors.greenAccent : Colors.blue,
          onPressed: () {
            if (listOfFavour.contains(widget.quote) == true) {
              listOfFavour.remove(widget.quote);
              setState(() {
                i = false;
              });
            } else {
              listOfFavour.add(widget.quote);
              setState(() {
                i = true;
              });
            }
          },
          label: Text(!i ? 'Добавить  в избранное' : 'А избранном!'),
          icon: Icon(!i ? Icons.star_border : Icons.star)),
    );
  }
}
