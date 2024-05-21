import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/customWidgets/custom_button.dart';
import 'package:olohaproject/core/utils/app_images.dart';
import 'package:olohaproject/core/utils/app_styles.dart';
import 'package:olohaproject/features/WelcomePage/presentation/widgets/sign_in_and_sign_up_button.dart';

class WelcomePageMainContainer extends StatelessWidget {
  const WelcomePageMainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Welcome to Oloha',
            style: AppStyles.semibold22Text,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'Live life with no excuses, travel with no regret',
            style: AppStyles.regular14Text,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              bckcolor: blackButtonColor,
              image: Assets.assetsImagesAppleicon,
              onPressed: () {},
              text: 'Sign in with Apple'),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              bckcolor: redButtonColor,
              onPressed: () {},
              image: Assets.assetsImagesGoogle,
              text: 'Sign in with Google'),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              bckcolor: blueButtonColor,
              onPressed: () {},
              image: Assets.assetsImagesFacebookF,
              text: 'Continue with Facebook'),
          const SizedBox(
            height: 16,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Continue as guest',
                style: AppStyles.medium14Text,
              )),
          const SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Or',
                style: AppStyles.medium14Text,
              )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInAndSignUpButton(
                  color: mainColor,
                  text: 'Sign in',
                  onPressed: () {
                    GoRouter.of(context).push('/sign_in_page');
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                SignInAndSignUpButton(
                    color: blackButtonColor, onPressed: () {
                      GoRouter.of(context).push('/sign_up_page');
                    }, text: 'Sign up'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
