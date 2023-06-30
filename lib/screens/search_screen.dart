import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/icon_text_widget.dart';
import 'package:book_tickets/widgets/view_all_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              "What are\nyou looking for?",
              style: Styles.headlineStyle1.copyWith(
                fontSize: 35
              ),
            ),
            const Gap(25.0),
            FittedBox(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xfff4f6fd),
                ),
                padding: const EdgeInsets.all(3.5),
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.44,
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50.0)
                        ),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                            "Airline Tickets",
                            style: Styles.textStyle,
                          )
                      ),
                    ),
                    Container(
                      width: size.width * 0.56,
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(50.0)
                        )
                      ),
                      child: Center(
                        child: Text(
                          "Hotels",
                          style: Styles.textStyle.copyWith(
                            color: Colors.grey[600]
                          ),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Gap(25.0),
            const IconText(
              text: "Departure",
              icon: Icons.flight_takeoff_rounded,
            ),
            const Gap(20.0),
            const IconText(
              text: "Arrival",
              icon: Icons.flight_land_rounded,
            ),
            const Gap(25.0),
            Container(
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xd91130ce)
              ),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            ),
            const Gap(40.0),
            ViewAll(
              title: "Upcoming Flights",
              onTap: () {
                print("View all upcoming flights tapped");
              }
            ),
            const Gap(15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.42,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 190.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg")
                          )
                        ),
                      ),
                      const Gap(12.0),
                      Text(
                        "20% discount on the early booking of this flight, Don't miss out this chance.",
                        textAlign: TextAlign.center,
                        style: Styles.headlineStyle2.copyWith(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 20.0
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xff3ab8b8),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.white
                                ),
                              ),
                              const Gap(20.0),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -40.0,
                          top: -30.0,
                          child: Container(
                            padding: const EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 18.0,
                                  color: const Color(0x99189999),
                                ),
                                color: Colors.transparent
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(15.0),
                    Container(
                      width: size.width * 0.44,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: const Color(0xffec6545),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Take love",
                            textAlign: TextAlign.center,
                            style: Styles.headlineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(15.0),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 32)
                                ),
                                TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 42)
                                ),
                                TextSpan(
                                    text: '😘',
                                    style: TextStyle(fontSize: 32)
                                ),
                              ]
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
