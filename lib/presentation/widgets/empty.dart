import 'package:flutter/material.dart';
import 'package:resume_master5/values/sizes.dart';

class Empty extends StatelessWidget {
  const Empty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: Sizes.WIDTH_0,
      height: Sizes.HEIGHT_0,
    );
  }
}
