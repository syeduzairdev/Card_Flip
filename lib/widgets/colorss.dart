import 'dart:math';
import 'package:flutter/material.dart';

index_color(int index) {
  return Colors.primaries[index % Colors.primaries.length];
}

randomColor() {
  return index_color(Random().nextInt(Colors.primaries.length));
}

Container centerText(String text, {Color? color, VoidCallback? onPressed}) {
  return Container(
    width: 200,
    height: 100,
    padding: EdgeInsets.all(30),
    color: color == null ? randomColor() : color,
    child: onPressed == null
        ? Text(text)
        : ElevatedButton(onPressed: onPressed, child: Text(text)),
  );
}

Container centerTextButton(String text,
    {Color? color, VoidCallback? onPressed}) {
  return Container(
    width: 200,
    height: 100,
    padding: const EdgeInsets.all(30),
    color: color == null ? randomColor() : color,
    child: onPressed == null
        ? Text(text)
        : TextButton(onPressed: onPressed, child: Text(text)),
  );
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
