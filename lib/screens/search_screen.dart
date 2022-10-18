import 'dart:ffi';

import 'package:booking_ticket/widgets/ticket_tabs.dart';
import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/app_double_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle
                .copyWith(fontSize: 35, color: Colors.white),
          ),
          Gap(AppLayout.getHeight(20)),
          AppTicketTab(
            leftText: 'Airline tickets',
            rightText: 'Hotels',
          ),
          const Gap(30),
          IconTextWidget(
            icon: Icons.flight_takeoff_rounded,
            text: 'Depature',
          ),
          Gap(AppLayout.getHeight(18)),
          IconTextWidget(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getWidth(15),
            ),
            decoration: BoxDecoration(
              color: Styles.buttonColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(10),
              ),
            ),
            child: Center(
              child: Text(
                'find tickets',
                style: Styles.textStyle
                    .copyWith(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          AppDoubleWidget(
            bigText: 'Hotels',
            smallText: 'View all',
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Styles.containerColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Styles.primaryColor,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(10),
                    horizontal: AppLayout.getWidth(10)),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/sit.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(12),
                          )),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text(
                      '20% of this early booking of this flight dont miss this chance.',
                      style: Styles.headLineStyle2.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(200),
                        width: size.width * 0.45,
                        decoration: (BoxDecoration(
                            color: Color(0xFF3aB8B8),
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(18)))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor Survey',
                              style: Styles.headLineStyle.copyWith(
                                  color: Styles.textColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(AppLayout.getHeight(15)),
                            Text(
                              'Take the Sourvey about our services and get discount',
                              style: Styles.headLineStyle2.copyWith(
                                  color: Styles.textColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -44,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    width: size.width * 0.45,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Styles.orangeColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'We Love You!',
                          style: Styles.headLineStyle.copyWith(
                            color: Styles.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Center(
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😊', style: TextStyle(fontSize: 32)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: '😊', style: TextStyle(fontSize: 32)),
                          ])),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
