import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/customWidgets/custom_button.dart';
import 'package:olohaproject/core/utils/app_images.dart';
import 'package:olohaproject/core/utils/app_styles.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/Another_Account_Button.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/Dont_Have_Account_Row.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/custom_password_text_field.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/custom_text_form_field.dart';

class SignInPageMainForm extends StatelessWidget {
  const SignInPageMainForm({
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
            'Welcome Back',
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
          Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password?',
                style: AppStyles.regular14Text,
              )),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              bckcolor: mainColor,
              onPressed: () {},
              image: '',
              text: 'Sign in'),
          const SizedBox(
            height: 16,
          ),
          const DontHaveAccountRow(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnotherAccountButton(
                  color: blackButtonColor, image: Assets.assetsImagesAppleicon),
              AnotherAccountButton(
                  image: Assets.assetsImagesGoogle, color: redButtonColor),
              AnotherAccountButton(
                  image: Assets.assetsImagesFacebookF, color: blueButtonColor),
            ],
          )
        ]),
      ),
    );
  }
}
