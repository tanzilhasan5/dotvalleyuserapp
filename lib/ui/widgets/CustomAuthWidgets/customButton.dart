import 'package:flutter/material.dart';

import '../../utils/color.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.onpress,
    this.customColor,
    this.child,
    this.borderSide,
  });

  final Function()? onpress;
  final customColor;
  final child;
  final borderSide;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        side: BorderSide(),
        backgroundColor: customColor,
        minimumSize: const Size(355, 50),
        maximumSize: Size.infinite,
      ),
      onPressed: onpress,
      child: child,
    );
  }
}
