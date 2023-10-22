import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    required this.controller,
    this.textInputAction = TextInputAction.done,
    this.keyboardType = TextInputType.text,
  });
  final String labelText;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
