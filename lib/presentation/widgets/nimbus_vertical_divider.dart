import 'package:flutter/material.dart';
import 'package:resume_master5/values/colors.dart';

class NimbusVerticalDivider extends StatelessWidget {
  const NimbusVerticalDivider({
    this.thickness = 0.8,
    this.width,
    this.color = AppColors.black,
  });

  final double? width;
  final double thickness;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(thickness: thickness);
  }
}
