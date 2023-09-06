import 'package:flutter/material.dart';

final formKeyCell = GlobalKey<FormState>();

class LogCell extends StatefulWidget {
  const LogCell({super.key});

  @override
  State<LogCell> createState() => _LogCellState();
}

class _LogCellState extends State<LogCell> {
  RegExp regExp = RegExp(r'^\(?[1-9]{2}\)?\s?9?[6789][0-9]{3,4}\-?[0-9]{4}$');
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  void updateFormattedPhoneNumber(String text) {
    String formatted = text.replaceAllMapped(
      RegExp(r'(\d{2})(\d{5})(\d{4})'),
      (Match m) => "(${m[1]}) ${m[2]}-${m[3]}",
    );

    phoneNumberController.value = phoneNumberController.value.copyWith(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyCell,
      child: TextFormField(
        controller: phoneNumberController,
        keyboardType: TextInputType.phone,
        autocorrect: false,
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
          } else if (!regExp.hasMatch(value)) {
            return 'Please enter valid cellphone number';
          }
          return null;
        },
        onChanged: (value) {
          updateFormattedPhoneNumber(value);
        },
      ),
    );
  }
}
