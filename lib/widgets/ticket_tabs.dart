import 'package:flutter/material.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);

    return FittedBox(
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
                    firstTab,
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
                    secondTab,
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey[600]
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
