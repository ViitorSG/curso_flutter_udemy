import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
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
    Key? key})
      : super(key: key);

  const Button.big({
    required this.text,
    required this.cb,
    this.big = true,
    this.color = DEFAULT,
    Key? key})
      : super(key: key);

  const Button.operation({
    required this.text,
    required this.cb,
    this.big = false,
    this.color = OPERATION,
    Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
