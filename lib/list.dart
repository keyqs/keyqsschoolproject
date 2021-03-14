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
  void initState() {
    super.initState();
  }

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
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext c) => FavouritePage(),
                    ));
              }),
          ListTile(
              title: Text("Избранное"),
              leading: Icon(Icons.star, color: Colors.amber),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext c) => FavouritePage(),
                    ));
              })
        ],
      )),
    );
  }
}

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  var localList = <Quote>[];
  @override
  void initState() {
    localList = listOfFavour;
    print('init');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () {
                  listOfFavour.clear();
                  setState(() {
                    localList.clear();
                  });
                },
                child: Icon(Icons.delete_forever_outlined))
          ],
          title: Text('избранный жумайсынба'),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [
          Column(
            children:
                localList.map((quote) => FormulaBlock(quote: quote)).toList(),
          )
        ],
      )),
    );
  }
}
