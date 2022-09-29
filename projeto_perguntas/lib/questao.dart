import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.texto, {Key? key}) : super(key: key);
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
