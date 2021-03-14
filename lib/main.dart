import 'package:flutter/material.dart';
import 'quote.dart';
import 'list.dart';
import 'quote.dart';

var listOfFavour = <Quote>[];

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

/*quoteTempLate(
  Quote quote,
  BuildContext context,
) {
  return Widgets();
  {
    return Card(
        child: Column(
      children: <Widget>[
        Text(quote.text),
        Container(
          color: Colors.grey[800],
          height: 2.0,
          width: 350,
        ),
        FlatButton(
            child: Text(quote.niuton1,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                )),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext c) {
                  var flatButton = FlatButton(
                    child: Text(quote.niuton1),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  );
                  return Scaffold(
                    appBar: AppBar(
                        backgroundColor: Colors.red, title: Text('My Page')),
                    body: Column(
                        //children: [
                        //Icon(Icons.star, color: Colors.yellow, size: 36.0),
                        //],
                        ),
                    floatingActionButton: FloatingActionButton.extended(
                        onPressed: () {
                          i = !i;
                          setState(() {
                            i == true ? buttonText = "1" : buttonText = "2";
                          });
                        },
                        label: Text("Добавить в избранное"),
                        icon: Icon(Icons.star)),
                  );
                },
              ));
            }),
      ],
    ));
  }*/
/*return Card(
    child: Container(
      height: 45,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          Container(
            color: Colors.grey[800],
            height: 2.0,
          ),
          Text(
            quote.niuton1,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}}*/
