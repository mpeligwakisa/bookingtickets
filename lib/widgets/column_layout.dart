import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      //style : isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3,
        ),
        const Gap(5),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
