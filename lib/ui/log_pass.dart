import 'package:flutter/material.dart';

final formKeyPass = GlobalKey<FormState>();

class LogPass extends StatefulWidget {
  const LogPass({super.key});

  @override
  State<LogPass> createState() => _LogPassState();
}

class _LogPassState extends State<LogPass> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyPass,
      child: TextFormField(
        obscureText: true,
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
        ),
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
