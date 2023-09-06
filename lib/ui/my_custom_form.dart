import 'package:flutter/material.dart';
import 'package:exemplo/ui/log_form.dart';
import 'package:exemplo/ui/log_pass.dart';
import 'package:exemplo/ui/log_name.dart';
import 'package:exemplo/ui/log_cellnumber.dart';
import 'package:exemplo/constants.dart';
import 'package:exemplo/var.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            width: 300,
            //height: 450,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'EXEMPLO',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  FieldTitle(title: 'Nome'),
                  kTitleSpace,
                  const LogName(),
                  kFieldSpace,
                  FieldTitle(title: 'Email'),
                  kTitleSpace,
                  const LogForm(),
                  kFieldSpace,
                  FieldTitle(title: 'Senha'),
                  kTitleSpace,
                  const LogPass(),
                  kFieldSpace,
                  FieldTitle(title: 'Número do Celular'),
                  kTitleSpace,
                  const LogCell(),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate() &
                              formKeyPass.currentState!.validate() &
                              formKeyName.currentState!.validate() &
                              formKeyCell.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Loading'),
                              ),
                            );
                          } else {
                            debugPrint('Error');
                          }
                        },
                        child: const Text('Log in'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
