import 'package:flutter/material.dart';

final formKeyCell = GlobalKey<FormState>();

class LogCell extends StatefulWidget {
  const LogCell({super.key});

  @override
  State<LogCell> createState() => _LogCellState();
}

class _LogCellState extends State<LogCell> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyCell,
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffC1D6FB), width: 4),
            ),
            filled: true,
            fillColor: Colors.grey.shade200,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade200,
                width: 2,
              ),
            ),
            hintText: '(00) 00000-0000'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}
