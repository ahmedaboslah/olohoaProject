
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olohaproject/constants.dart';

import '../../../../core/utils/app_styles.dart';

class AlreadyHaveAccountRow extends StatelessWidget {
  const AlreadyHaveAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: AppStyles.medium14Text
              .copyWith(color: const Color(0xff696974)),
        ),
        GestureDetector(
            onTap: () {
              GoRouter.of(context).push('/sign_in_page');
            },
            child: Text(
              'Sign in',
              style: AppStyles.medium14Text.copyWith(color: mainColor),
            ))
      ],
    );
  }
}
