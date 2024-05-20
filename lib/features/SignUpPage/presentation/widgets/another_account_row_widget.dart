
import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/utils/app_images.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/Another_Account_Button.dart';

class AnotherAccountsRowWidget extends StatelessWidget {
  const AnotherAccountsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnotherAccountButton(
            color: blackButtonColor, image: Assets.assetsImagesAppleicon),
        AnotherAccountButton(
            image: Assets.assetsImagesGoogle, color: redButtonColor),
        AnotherAccountButton(
            image: Assets.assetsImagesFacebookF, color: blueButtonColor),
      ],
    );
  }
}
