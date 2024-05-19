
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnotherAccountButton extends StatelessWidget {
  const AnotherAccountButton({
    super.key,
    required this.image,
    required this.color,
  });
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size(90,52)),
          
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed: () {},
        child: SvgPicture.asset(image));
  }
}
