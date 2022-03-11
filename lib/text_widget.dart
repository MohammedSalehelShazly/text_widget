import 'responsive.dart';
import 'package:flutter/material.dart';

// It does not support multi-lines now,
// but will do it soon.

class TextWidget extends StatelessWidget {
  const TextWidget(this.txt,{
    @required this.widthRatio,
    this.heightRatio = 0,
    this.alignment,
    this.backgroundColor,
    this.style,
    this.textAlign,
    this.textDirection,
    this.softWrap,
  });
  final String txt;
  final double widthRatio;
  final double heightRatio;
  final Alignment alignment;
  final TextStyle style;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final bool softWrap;
  /// use [backgroundColor] for background color of all box, (for test)
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: alignment?? Alignment.center,
    child: Material(
      color: backgroundColor,
      child: ConstrainedBox(
      constraints: BoxConstraints.expand(
        width: responsive.sWidth(context) *(widthRatio??.8),
        height: heightRatio != 0
              ? (responsive.sHeight(context) *heightRatio)
              : (responsive.sWidth(context) *widthRatio) /(txt.length / 2.7),
      ),
      child: FittedBox(
        child: Text(txt,
          style: style,
          textAlign: textAlign,
          textDirection: textDirection,
          // softWrap: true,
        ),
      ),
      )
    )
    );
  }
}