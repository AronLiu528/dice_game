import 'package:flutter/material.dart';
import 'package:flutter_01/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.background(),
      ),
    ),
  );
}
