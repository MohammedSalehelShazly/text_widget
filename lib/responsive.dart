import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Responsive responsive = const Responsive();

class Responsive{
  const Responsive();

    MediaQueryData mediaQuery(BuildContext context)=> MediaQuery.of(context);
    double sHeight(BuildContext context)=> mediaQuery(context).size.height;
    double sWidth(BuildContext context)=> mediaQuery(context).size.width;
    
}
