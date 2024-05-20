import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/customWidgets/app_logo.dart';
import 'widgets/sign_up_page_main_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: const CustomScrollView(slivers: [
       SliverToBoxAdapter(child:  AppLogo(),),
        SliverToBoxAdapter(child: SignUpPageMainForm(),)
      ]),
    );
  }
}