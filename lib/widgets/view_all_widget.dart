import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class ViewAll extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const ViewAll({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            "View all",
            style: Styles.textStyle.copyWith(
                color: Styles.primaryColor
            ),
          ),
        )
      ],
    );
  }
}
