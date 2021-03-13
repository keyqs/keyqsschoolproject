import 'package:floppa/formula_page.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'quote.dart';

class FormulaBlock extends StatefulWidget {
  final Quote quote;

  const FormulaBlock({Key key, this.quote}) : super(key: key);
  @override
  _FormulaBlockState createState() => _FormulaBlockState();
}

class _FormulaBlockState extends State<FormulaBlock> {
  Route _routeFormulaPage() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => FormulaPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0, 10);
        var end = Offset.zero;
        var curve = Curves.fastLinearToSlowEaseIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Card(
          child: Column(
        children: <Widget>[
          Text(widget.quote.text),
          Divider(
            height: 2.0,
            color: Colors.black,
          ),
          FlatButton(
              child: Text(widget.quote.niuton1,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  )),
              onPressed: () {
                Navigator.push(context, _routeFormulaPage());
              }),
        ],
      )),
    );
  }
}
