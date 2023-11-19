import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final Color? color;
  final double width;
  final double height;

  const CustomButton({
    Key? key,
    required this.widget,
    required this.onPressed,
    required this.buttonStyle,
    this.color,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: widget,
        style: buttonStyle,
      ),
    );
  }
}
