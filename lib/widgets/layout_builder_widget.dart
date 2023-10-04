import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool isColor;
  final int sections;
  final double width;

  const AppLayoutBuilderWidget({
    super.key,
    required this.isColor,
    required this.sections,
    this.width = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
                  (index) => SizedBox(
                width: width,
                height: 1.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor ? Colors.white : Colors.grey.shade300
                  ),
                ),
              )
          ),
        );
      },
    );
  }
}
