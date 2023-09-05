import 'package:flutter/material.dart';
import 'package:exemplo/ui/my_custom_form.dart';

void main() {
  runApp(const Exemplo());
}

class Exemplo extends StatelessWidget {
  const Exemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCustomForm(),
    );
  }
}
