import 'package:booking_ticket/widgets/ticket_view.dart';
import 'package:booking_ticket/utils/app_info_list.dart';
import 'package:flutter/material.dart';
import 'package:booking_ticket/utils/styles.dart';
import 'package:gap/gap.dart';

import '../widgets/app_double_widget.dart';
import 'hotel_view.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HomeScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img_1.png'),
                          )),
                    ),
                  ],
                ),
                const Gap(20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(35),
                const AppDoubleWidget(
                  bigText: 'Upcoming Flight',
                  smallText: 'View all',
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLineStyle2.copyWith(color: Colors.white54),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View all',
                    style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList
                  .map((singleHotel) => HotelScreen(hotel: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
