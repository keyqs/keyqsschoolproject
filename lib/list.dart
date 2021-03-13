import 'package:floppa/formula_block.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'main.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class Context extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    List<Quote> quotes = [
      Quote(niuton1: 'я забыл)', text: 'Первый Закон ньютона'),
      Quote(niuton1: 'F=ma', text: 'Второй закон Ньютона'),
      Quote(niuton1: 'F1=-F2', text: 'Третий закон Ньютона'),
      Quote(niuton1: 'я забыл)', text: 'Первый Закон ньютона'),
      Quote(niuton1: 'F=ma', text: 'Второй закон Ньютона'),
      Quote(niuton1: 'F1=-F2', text: 'Третий закон Ньютона'),
      Quote(niuton1: 'я забыл)', text: 'Первый Закон ньютона'),
      Quote(niuton1: 'F=ma', text: 'Второй закон Ньютона'),
      Quote(niuton1: 'F1=-F2', text: 'Третий закон Ньютона'),
      Quote(niuton1: 'я забыл)', text: 'Первый Закон ньютона'),
      Quote(niuton1: 'F=ma', text: 'Второй закон Ньютона'),
      Quote(niuton1: 'F1=-F2', text: 'Третий закон Ньютона'),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          title: Text('жумайсынба'),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: ListView(
        children: [
          Column(
            children:
                quotes.map((quote) => FormulaBlock(quote: quote)).toList(),
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              "Меню",
            ),
            decoration: BoxDecoration(color: Colors.red[500]),
          ),
          ListTile(
              title: Text("История"),
              leading: Icon(Icons.bookmark_border_outlined, color: Colors.red),
              onTap: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext c) {
                    var flatButton = FlatButton(
                      child: Text('1'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                    return Scaffold(
                      appBar: AppBar(
                          backgroundColor: Colors.red, title: Text('My Page')),
                      body: Column(children: <Widget>[
                        Text('1'),
                        Container(
                          color: Colors.grey[800],
                          height: 2.0,
                          width: 350,
                        ),
                      ]),
                    );
                  },
                ));
              }),
          ListTile(
              title: Text("Избранное"),
              leading: Icon(Icons.star, color: Colors.amber),
              onTap: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext c) {
                    var flatButton = FlatButton(
                      child: Text('1'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                    return Scaffold(
                      appBar: AppBar(
                          backgroundColor: Colors.red, title: Text('My Page')),
                      body: Center(
                        child: flatButton,
                      ),
                    );
                  },
                ));
              })
        ],
      )),
    );
  }
}
