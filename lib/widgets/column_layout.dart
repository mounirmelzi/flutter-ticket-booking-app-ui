import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;

  const AppColumnLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.alignment
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headlineStyle3,
        ),
        const Gap(5),
        Text(
          secondText,
          style: Styles.headlineStyle4,
        ),
      ],
    );
  }
}
