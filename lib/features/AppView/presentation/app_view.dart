import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/utils/adaptive_layout_widget.dart';
import 'package:olohaproject/features/DeskTopView/desktop_view.dart';
import 'package:olohaproject/features/MobileView/mobile_view.dart';
import 'package:olohaproject/features/TabletView/tablet_view.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: mainColor,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileAppView(),
        tabletLayout: (context) => const TabletAppView(),
        desktopLayout: (context) => const DeskTopAppView(),
      ),
    );
  }
}
