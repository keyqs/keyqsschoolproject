import 'main.dart';
import 'list.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  String text;
  String niuton1;

  Quote({
    this.text,
    this.niuton1,
  });

  @override
  List<Object> get props => [text, niuton1];
}

class Mechanika {
  String text;
  String mechanika1;
  String mechanika2;
  String mechanika;
}
