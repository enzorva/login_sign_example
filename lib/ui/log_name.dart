import 'package:flutter/material.dart';

final formKeyName = GlobalKey<FormState>();

class LogName extends StatefulWidget {
  const LogName({super.key});

  @override
  State<LogName> createState() => _LogNameState();
}

class _LogNameState extends State<LogName> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyName,
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
