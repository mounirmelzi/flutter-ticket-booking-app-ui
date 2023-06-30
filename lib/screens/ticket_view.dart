import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({super.key, required this.ticket});

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
              decoration: const BoxDecoration(
                color: Color(0xff526799),
                borderRadius: BorderRadius.only(
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
                        style: Styles.headlineStyle3.copyWith(
                          color: Colors.white
                        ),
                      ),
                      const Spacer(),
                      const ThickContainer(),
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
                                            (index) => const SizedBox(
                                          width: 3.0,
                                          height: 1.0,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white
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
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style: Styles.headlineStyle3.copyWith(
                          color: Colors.white
                        ),
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
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white
                          ),
                        ),
                      ),
                      Text(
                        ticket["flying_time"],
                        style: Styles.headlineStyle4.copyWith(
                          color: Colors.white
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4.copyWith(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // showing the orange part of the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                width: 5.0,
                                height: 1.0,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.white
                                  ),
                                ),
                              )
                            ),
                          );
                        },
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 20.0,
                    width: 10.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21.0),
                  bottomRight: Radius.circular(21.0),
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
                        style: Styles.headlineStyle3.copyWith(
                          color: Colors.white
                        ),
                      ),
                      const Gap(5.0),
                      Text(
                        "Date",
                        style: Styles.headlineStyle4.copyWith(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ticket["departure_time"],
                        style: Styles.headlineStyle3.copyWith(
                            color: Colors.white
                        ),
                      ),
                      const Gap(5.0),
                      Text(
                        "Departure time",
                        style: Styles.headlineStyle4.copyWith(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket["number"].toString(),
                        style: Styles.headlineStyle3.copyWith(
                            color: Colors.white
                        ),
                      ),
                      const Gap(5.0),
                      Text(
                        "Number",
                        style: Styles.headlineStyle4.copyWith(
                            color: Colors.white
                        ),
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
