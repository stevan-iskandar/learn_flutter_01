import 'package:flutter/material.dart';
import '../../constants/now_ui_colors.dart';

class NowElevatedButton extends StatelessWidget {
  const NowElevatedButton({
    Key? key,
    this.text = '',
    this.width100 = true,
    this.borderRadius = 4,
    this.paddingHorizontal = 12,
    this.primary = NowUIColors.primary,
    this.onPrimary = NowUIColors.white,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final bool width100;
  final double borderRadius;
  final double paddingHorizontal;
  final Color primary;
  final Color onPrimary;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width100 ? double.infinity : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primary,
          onPrimary: onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.only(
            left: paddingHorizontal,
            right: paddingHorizontal,
            top: 12,
            bottom: 12,
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
