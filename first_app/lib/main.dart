import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
  const MaterialApp(
      home: Scaffold(
        body: GradualContainer(const Color.fromARGB(255, 26, 101, 122),const Color.fromARGB(255, 9, 56, 69)),
      ),
    ),
  );
}

