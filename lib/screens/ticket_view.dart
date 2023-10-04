import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColor;

  const TicketView({super.key, required this.ticket, this.isColor=true});

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // showing the blue part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor ? const Color(0xff526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21.0),
                  topRight: Radius.circular(21.0),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: isColor
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                      ),
                      const Spacer(),
                      ThickContainer(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24.0,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6).floor(),
                                        (index) => SizedBox(
                                          width: 3.0,
                                          height: 1.0,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: isColor ? Colors.white : Colors.grey.shade300
                                            ),
                                          ),
                                        )),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor ? Colors.white : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                      ThickContainer(isColor: isColor),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style: isColor
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                      )
                    ],
                  ),
                  const Gap(3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100.0,
                        child: Text(
                          ticket["from"]["name"],
                          style: isColor
                            ? Styles.headlineStyle4.copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        ticket["flying_time"],
                        style: isColor
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                      ),
                      SizedBox(
                        width: 100.0,
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: isColor
                            ? Styles.headlineStyle4.copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // showing the orange part of the ticket
            Container(
              color: isColor ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20.0,
                    width: 10.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor ? Colors.grey.shade200 : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: AppLayoutBuilderWidget(
                        isColor: isColor,
                        sections: 15,
                      ),
                    )
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 10.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor ? Colors.grey.shade200 : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // bottom part of the orange part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor ? 21.0 : 0),
                  bottomRight: Radius.circular(isColor ? 21.0 : 0),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 10.0,
                bottom: 16.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket["date"],
                        style: isColor
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                      ),
                      const Gap(5.0),
                      Text(
                        "Date",
                        style: isColor
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ticket["departure_time"],
                        style: isColor
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                      ),
                      const Gap(5.0),
                      Text(
                        "Departure time",
                        style: isColor
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket["number"].toString(),
                        style: isColor
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                      ),
                      const Gap(5.0),
                      Text(
                        "Number",
                        style: isColor
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
