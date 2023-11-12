import 'package:flutter/material.dart';

import '../../shared/utils/app_color.dart';

// ignore: must_be_immutable
class CustomBackground extends StatelessWidget {
  Widget? child;
  CustomBackground({super.key, this.child}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.1,
            0.4,
            0.9,
          ],
          colors: [
            AppColor.instance.gradien1,
            AppColor.instance.gradien2,
            AppColor.instance.gradien3,
          ],
        ),
      ),
      child: child,
    );
  }
}
