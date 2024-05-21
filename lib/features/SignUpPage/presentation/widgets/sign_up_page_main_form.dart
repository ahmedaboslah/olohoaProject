import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/customWidgets/custom_button.dart';
import 'package:olohaproject/core/utils/app_styles.dart';
import 'package:olohaproject/features/SignUpPage/presentation/widgets/another_account_row_widget.dart';
import 'package:olohaproject/features/SignUpPage/presentation/widgets/terms_and_condition.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/custom_password_text_field.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/custom_text_form_field.dart';

import 'already_have_an_account.dart';

class SignUpPageMainForm extends StatelessWidget {
  const SignUpPageMainForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Register new account',
            style: AppStyles.semibold22Text,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'Please log in to your account',
            style: AppStyles.regular14Text,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFormField(hintText: 'Email or phone number'),
          const SizedBox(
            height: 10,
          ),
          const CustomPasswordFormField(hintText: 'Password'),
          const SizedBox(
            height: 10,
          ),
          const CustomPasswordFormField(hintText: 'Email'),
          const SizedBox(
            height: 10,
          ),
          const CustomPasswordFormField(hintText: 'Phone number'),
          const SizedBox(
            height: 10,
          ),
          const TermsAndCondition(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              bckcolor: mainColor,
              onPressed: () {
                GoRouter.of(context).push('/Location');
              },
              image: '',
              text: 'Sign up'),
          const SizedBox(
            height: 16,
          ),
          const AlreadyHaveAccountRow(),
          const SizedBox(
            height: 17,
          ),
          Center(
              child: Text(
            'Or continue with',
            style:
                AppStyles.medium14Text.copyWith(color: const Color(0xffB5B5BE)),
          )),
          const SizedBox(
            height: 20,
          ),
          const AnotherAccountsRowWidget()
        ]),
      ),
    );
  }
}
