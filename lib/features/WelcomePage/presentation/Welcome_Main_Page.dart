import 'package:flutter/material.dart';
import 'package:olohaproject/core/customWidgets/app_logo.dart';
import 'package:olohaproject/features/WelcomePage/presentation/widgets/welcome_page_main_container.dart';

class WelcomeMainPage extends StatelessWidget {
  const WelcomeMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
     SliverToBoxAdapter(child:  AppLogo(),),
      SliverFillRemaining(hasScrollBody: false,child: WelcomePageMainContainer(),)
    ]);
  }
}
