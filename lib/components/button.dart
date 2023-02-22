import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // ignore: constant_identifier_names
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  // ignore: constant_identifier_names
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  // ignore: constant_identifier_names
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    required this.text,
    required this.cb,
    this.big = false,
    this.color = DEFAULT,
    super.key,
  });

  const Button.big({
    required this.text,
    required this.cb,
    this.big = true,
    this.color = DEFAULT,
    super.key,
  });

  const Button.operation({
    required this.text,
    required this.cb,
    this.big = false,
    this.color = OPERATION,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200,
            ),
          ),
          onPressed: () => cb(text),
        ));
  }
}
