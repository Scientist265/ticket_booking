import 'package:booking_ticket/utils/app_info_list.dart';
import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/utils/styles.dart';
import 'package:booking_ticket/widgets/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getWidth(15)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text('Tickets',
                  style: Styles.headLineStyle
                      .copyWith(color: Colors.white, fontSize: 40)),
              Gap(AppLayout.getHeight(15)),
              const AppTicketTab(leftText: 'UpComing', rightText: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(10),
                      vertical: AppLayout.getHeight(15)),
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: 'Airline Scientist',
                            secondText: 'Passenger',
                            isColor: false,
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: 'A10598301',
                            secondText: 'Passport',
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      const AppLayoutBuilder(sections: 15, isColor: true),
                      Gap(AppLayout.getHeight(15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: '346436 346208',
                            secondText: 'Number E-Ticket',
                            isColor: false,
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: 'B2SG28',
                            secondText: 'Booking Code',
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      const AppLayoutBuilder(sections: 15, isColor: true),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    '*** 2443',
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Colors.black),
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeight(8)),
                              Text(
                                'Payment method',
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              AppColumnLayout(
                                alignment: CrossAxisAlignment.end,
                                firstText: '\$239.99',
                                secondText: 'Price',
                                isColor: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(15)),
                      const AppLayoutBuilder(sections: 15, isColor: true),
                      Gap(AppLayout.getHeight(10)),
                    ],
                  )),
              /*Bar code sections*/
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    )),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                    right: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(20)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/Scientist265',
                      barcode: Barcode.code128(),
                      width: double.infinity,
                      height: 70,
                      color: Colors.black,
                      drawText: false,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(15)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(5)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 8,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(5)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 8,
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
