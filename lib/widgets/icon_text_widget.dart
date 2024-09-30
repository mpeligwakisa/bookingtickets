import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          const Gap(10),
          Text(
            text,
            style: Styles.textStyle,
          ),
          const Gap(5),
          Container(
            width: size.width * .44,
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              color: Colors.transparent,
            ),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  isDense: true,

                  //hintText: 'Enter Departure date'
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
