import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              children: [
                Text(
                  "Tickets",
                  style: Styles.headlineStyle1,
                ),
                const Gap(20),
                const AppTicketTabs(
                  firstTab: "Upcoming",
                  secondTab: "Previous",
                ),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketsList[0],
                    isColor: false,
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: "5221 364869",
                            secondText: "Passport",
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        isColor: false,
                        sections: 15,
                        width: 7,
                      ),
                      const Gap(20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "0055 444 77147",
                            secondText: "Number of E-ticket",
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: "B2SG28",
                            secondText: "Booking code",
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        isColor: false,
                        sections: 15,
                        width: 7,
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/visa.png", scale: 11),
                                  Text(
                                    " *** 2462",
                                    style: Styles.headlineStyle3,
                                  )
                                ],
                              ),
                              const Gap(5),
                              Text(
                                "Payment method",
                                style: Styles.headlineStyle4,
                              )
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: "\$249.99",
                            secondText: "Price",
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // bar code
                const SizedBox(height: 1),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: "https://github.com/mounirmelzi",
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                ),
                // the ticket
                const Gap(20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketsList[0],
                    isColor: true,
                  ),
                )
              ],
            ),
            Positioned(
              left: 15,
              top: 225,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Styles.textColor,
                    width: 2
                  )
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: 15,
              top: 225,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Styles.textColor,
                        width: 2
                    )
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
