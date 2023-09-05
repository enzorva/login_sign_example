import 'package:flutter/material.dart';

class FieldTitle extends StatelessWidget {
  late String title;

  FieldTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
