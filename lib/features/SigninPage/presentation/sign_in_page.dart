import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/customWidgets/app_logo.dart';
import 'package:olohaproject/features/SigninPage/presentation/widgets/welcome_page_main_container.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: const CustomScrollView(slivers: [
       SliverToBoxAdapter(child:  AppLogo(),),
        SliverToBoxAdapter(child: SignInPageMainForm(),)
      ]),
    );
  }
}