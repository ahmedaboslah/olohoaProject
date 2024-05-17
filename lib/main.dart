import 'package:flutter/material.dart';
import 'package:olohaproject/features/AppView/presentation/app_view.dart';

void main() {
  runApp(const MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppView(),
    );
  }
}