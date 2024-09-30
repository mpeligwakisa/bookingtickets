import 'package:bookingtickets/screens/hotel_screen.dart';
import 'package:bookingtickets/screens/ticket_view.dart';
import 'package:bookingtickets/utils/app_into_list.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Center(
        child: ListView(
          children: [
            //first child
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(40),
                          //code to display good morning text and header
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle,
                          )
                        ],
                      ),
                      //container for image display
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/logo1.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6F0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                  const Gap(40),
                  const AppDoubleTextWidget(
                      bigText: "Upcoming Flights", smallText: "View all")
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  children: ticketList
                      .map((singleTicket) => TicketView(ticket: singleTicket))
                      .toList()),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const AppDoubleTextWidget(
                  bigText: "Hotels", smallText: "View all"),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  children: hotelList
                      .map((singleHotel) => HotelScreen(hotel: singleHotel))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
