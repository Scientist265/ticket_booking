import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/widgets/app_double_widget.dart';
import 'package:booking_ticket/widgets/column_layout.dart';
import 'package:booking_ticket/widgets/layout_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets',
                      style:
                          Styles.headLineStyle.copyWith(color: Colors.white)),
                  Gap(AppLayout.getHeight(2)),
                  Text('New-York',
                      style: Styles.textStyle.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.white54)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // CircleAvatar(
                        //   backgroundColor: Colors.black,
                        //   child: Icon(
                        //     Icons.shield,
                        //     color: Colors.white54,
                        //   ),
                        // ),
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: const Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Premium status',
                          style: Styles.textStyle.copyWith(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('You wanna Edit your profile');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(color: Colors.white54),
                    ),
                  )
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade600,
          ),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(100),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                right: -44,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Colors.blueAccent),
                      color: Colors.transparent),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.lightbulb_circle,
                          size: 27, color: Colors.black),
                      backgroundColor: Colors.white,
                      maxRadius: 30,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve Got a new Award',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white54.withOpacity(0.9),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text('you have 150 flights in a Year',
                            style: Styles.headLineStyle3.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white54))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Accumulated miles',
                style: Styles.headLineStyle.copyWith(color: Colors.white),
              ),
              Gap(AppLayout.getHeight(50)),
              Gap(AppLayout.getHeight(15)),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(18),
                      vertical: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF1F2537),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          '192802',
                          style: Styles.headLineStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.white),
                        ),
                      ),
                      AppDoubleWidget(
                          bigText: 'Miles accroued', smallText: '23 May 2021'),
                      Divider(
                        color: Styles.primaryColor,
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: '23 042',
                            secondText: 'Miles',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: 'Airline Co',
                            secondText: 'Received from',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const AppLayoutBuilder(
                        sections: 12,
                        isColor: false,
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: '24',
                            secondText: 'Miles',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: 'McDonal\'s ',
                            secondText: 'Received from',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      const AppLayoutBuilder(
                        sections: 12,
                        isColor: false,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: '23 042',
                            secondText: 'Miles',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: '52 340',
                            secondText: 'Received from',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(25)),
                      InkWell(
                        onTap: () {
                          print('fetch more miles here ');
                        },
                        child: Text('How to get more Miles',
                            style: Styles.headLineStyle4),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
