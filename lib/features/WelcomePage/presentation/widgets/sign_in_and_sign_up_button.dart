
import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';


import '../../../../core/utils/app_styles.dart';

class SignInAndSignUpButton extends StatelessWidget {
  const SignInAndSignUpButton({
    super.key, required this.text, required this.onPressed, required this.color,
  });
final String text;
final void Function() onPressed;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(140, 40)),
            backgroundColor: MaterialStatePropertyAll(color),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            '$text',
            style:color==blackButtonColor? AppStyles.semibold15Text.copyWith(color: Colors.white):AppStyles.semibold15Text,
          )),
    );
  }
}
