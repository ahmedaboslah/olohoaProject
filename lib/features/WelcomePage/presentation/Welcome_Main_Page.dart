import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/customWidgets/custom_button.dart';
import 'package:olohaproject/core/utils/app_images.dart';
import 'package:olohaproject/core/utils/app_styles.dart';
import 'package:olohaproject/features/WelcomePage/presentation/widgets/app_logo.dart';
import 'package:olohaproject/features/WelcomePage/presentation/widgets/sign_in_and_sign_up_button.dart';
import 'package:olohaproject/features/WelcomePage/presentation/widgets/welcome_page_main_container.dart';

class WelcomeMainPage extends StatelessWidget {
  const WelcomeMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
     SliverToBoxAdapter(child:  AppLogo(),),
      SliverFillRemaining(hasScrollBody: false,child: WelcomePageMainContainer(),)
    ]);
  }
}
