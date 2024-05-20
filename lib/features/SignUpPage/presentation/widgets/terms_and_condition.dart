
import 'package:flutter/material.dart';
import 'package:olohaproject/core/utils/app_styles.dart';
import 'package:olohaproject/features/SignUpPage/presentation/widgets/check_box.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CheckBox(),
        const SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'By creating an account, you agree to our',
              style: AppStyles.regular14Text,
            ),
            Text(
              'Term and Conditions',
              style: AppStyles.regular14Text
                  .copyWith(color: const Color(0xff171725)),
            ),
          ],
        ),
      ],
    );
  }
}


