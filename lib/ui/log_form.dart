import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();

class LogForm extends StatefulWidget {
  const LogForm({super.key});

  @override
  State<LogForm> createState() => _LogFormState();
}

class _LogFormState extends State<LogForm> {
  RegExp regExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
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
          } else if (!regExp.hasMatch(value)) {
            return 'Please enter valid email';
          }
          return null;
        },
      ),
    );
  }
}
