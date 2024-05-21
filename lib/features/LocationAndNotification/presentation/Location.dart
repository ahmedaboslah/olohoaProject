import 'package:flutter/material.dart';
import 'package:olohaproject/constants.dart';
import 'package:olohaproject/core/customWidgets/custom_button.dart';
import 'package:olohaproject/core/utils/app_styles.dart';

class LocationService extends StatelessWidget {
  const LocationService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Images/Rectangle 60.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ),
        Positioned(
            left: 20,
            right: 20,
            top: 90,
            child: Align(
                alignment: Alignment.center,
                child: Image.asset('assets/Images/locationService.png'))),
        Positioned(
            left: 120,
            bottom: 200,
            child: Text(
              'Location Services',
              style: AppStyles.semiBold24Text,
            )),
        Positioned(
            left: 80,
            bottom: 130,
            child: Text(
              'Get the best recommendations of thing to\n\t do near you! Oloha will need to enable\n\t\t\t\t\t\t\t       location services for this',
              style: AppStyles.regular15Text,
            )),
        Positioned(
          bottom: 30,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: CustomButton(
                  text: 'Turn On Location',
                  image: '',
                  onPressed: () {},
                  bckcolor: Colors.black),
            ))
      ]),
    );
  }
}
