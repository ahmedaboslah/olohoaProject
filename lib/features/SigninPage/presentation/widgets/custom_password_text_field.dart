
import 'package:flutter/material.dart';
import 'package:olohaproject/core/utils/app_styles.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            if (isVisible) {
              isVisible = false;
            } else {
              isVisible = true;
            }
            setState(() {});
          },
          icon: isVisible == false
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
        hintText: widget.hintText,
        hintStyle: AppStyles.regular15Text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xffE2E2EA),
          ),
        ),
      ),
    );
  }
}
