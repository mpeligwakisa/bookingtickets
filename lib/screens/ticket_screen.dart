import 'package:bookingtickets/screens/ticket_view.dart';
import 'package:bookingtickets/utils/app_into_list.dart';
//import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/column_layout.dart';
import 'package:bookingtickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final Size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              Text(
                "Tickets",
                style: Styles.headLineStyle,
              ),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              const Gap(35),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const Gap(1),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                            firstText: 'Mpeligwakisa',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start),
                        AppColumnLayout(
                          firstText: '123456789',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(20),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
