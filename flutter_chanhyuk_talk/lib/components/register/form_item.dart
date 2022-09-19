import 'package:flutter/material.dart';

class FormItem extends StatelessWidget {
  final String title;
  final Function(String? s) onSaved;
  final bool isPassword;

  const FormItem(
      {Key? key,
      required this.title,
      this.isPassword = false,
      required this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title),
      TextFormField(
        obscureText: isPassword,
        onSaved: onSaved,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "$title은 필수로 입력해주세요.";
          }
          return null;
        },
      ),
    ]);
  }
}
