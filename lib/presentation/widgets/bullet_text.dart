import 'package:flutter/material.dart';
import 'package:resume_master5/presentation/widgets/spaces.dart';
import 'package:resume_master5/values/colors.dart';

class TextWithBullet extends StatelessWidget {
  const TextWithBullet({super.key,
    required this.text,
    this.textStyle,
    this.spacing,
  });

  final String text;
  final TextStyle? textStyle;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const Bullet(),
        spacing == null ? SpaceW16() : SizedBox(width: spacing),
        Text(
          text,
          style: textStyle ??
              textTheme.bodyLarge?.copyWith(
                color: AppColors.primaryText2,
              ),
        ),
      ],
    );
  }
}

class Bullet extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color color;

  const Bullet({super.key,
    this.width = 4.0,
    this.height = 4.0,
    this.borderRadius = 20,
    this.color = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
    );
  }
}
