import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 17.0
      ),
      margin: const EdgeInsets.only(
        right: 17.0,
        top: 5.0
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel["image"]}")
              )
            ),
          ),
          const Gap(10.0),
          Text(
            hotel["place"],
            style: Styles.headlineStyle2.copyWith(
              color: Styles.kakiColor
            ),
          ),
          const Gap(5.0),
          Text(
            hotel["destination"],
            style: Styles.headlineStyle3.copyWith(
                color: Colors.white
            ),
          ),
          const Gap(8.0),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headlineStyle1.copyWith(
                color: Styles.kakiColor
            ),
          )
        ],
      ),
    );
  }
}
