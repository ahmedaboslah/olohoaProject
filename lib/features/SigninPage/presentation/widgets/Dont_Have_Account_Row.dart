
import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';

import '../../../../core/utils/app_styles.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account? ',
          style: AppStyles.medium14Text
              .copyWith(color: const Color(0xff696974)),
        ),
        GestureDetector(
            onTap: () {},
            child: Text(
              'Sign Up',
              style: AppStyles.medium14Text.copyWith(color: mainColor),
            ))
      ],
    );
  }
}
