import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import '../utils/styles.dart';
import 'column_layout.dart';
import 'layout_builder.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({
    super.key,
    required this.ticket,
    this.isColor,
  });
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 165 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(15)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // This first Container responsible for the blue part of the Card
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('${ticket['from']['code']}',
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(color: Colors.black)),
                      Expanded(
                        child: Container(),
                      ),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                                height: 24,
                                child: AppLayoutBuilder(
                                  sections: 6,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.54,
                                child: Icon(
                                  Icons.local_airport,
                                  color: isColor == null
                                      ? Colors.white
                                      : Styles.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '${ticket['to']['code']}',
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticket['from']['name']}',
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        '${ticket['flying_time']}',
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticket['to']['name']}',
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4
                                  .copyWith(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //This Container showing the orage part of the Ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:
                                isColor == null ? Styles.bgColor : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ))),
                  ),
                  const Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: AppLayoutBuilder(
                            sections: 15,
                          ))),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:
                                isColor == null ? Styles.bgColor : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ))),
                  )
                ],
              ),
            ),

            Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Color(0xFFF37B67) : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 15 : 0),
                      bottomRight: Radius.circular(isColor == null ? 15 : 0),
                    )),
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
