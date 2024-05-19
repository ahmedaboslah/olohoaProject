import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height* 0.4,
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),child: Image.asset('assets/Images/oloha logo 1 1.png')),
          const SizedBox(width: 16,),
          Text('Oloha',style: AppStyles.semibold36Text,)
              ]),
        ),);
  }
}