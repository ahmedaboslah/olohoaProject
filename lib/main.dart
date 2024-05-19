import 'package:flutter/material.dart';
import 'package:olohaproject/core/utils/app_router.dart';


void main() {
  runApp(const MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      
    );
  }
}