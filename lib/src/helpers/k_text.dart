import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;

  final int? maxLines;
  final bool? bold;

  KText({
    required this.text,
    this.color,
    this.bold = false,
    this.fontSize,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textScaleFactor: 1.0,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: fontSize != null ? fontSize! : 13,
        fontFamily: bold! ? 'Manrope Bold' : 'Manrope Regular',
        color: color != null ? color : Colors.black,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
