//import 'package:bookingtickets/widgets/double_text_widget.dart';
import 'package:bookingtickets/widgets/icon_text_widget.dart';
import 'package:bookingtickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text("What are \nyou looking for?",
              style: Styles.headLineStyle.copyWith(fontSize: 32)),
          const Gap(20),
          const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          const Gap(25),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure", /*hint: "City or Airport name"*/
          ),

          const Gap(10),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),

          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          const Gap(40),
          //const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")
        ],
      ),
    );
  }
}
