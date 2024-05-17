import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:olohaproject/core/utils/app_images.dart';

import '../../constants.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, required this.image, required this.onPressed, required this.bckcolor,
  });
final String text,image;
final void Function() onPressed;
final Color bckcolor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(bckcolor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          
         contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.15),
          leading: SvgPicture.asset(image),
          title: Text(
            '$text',
            style: AppStyles.semibold15Text,
          ),
        ));
  }
}