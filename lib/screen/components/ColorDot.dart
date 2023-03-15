import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    required this.isAction,
    required this.press,
  });
  final Color color;
  final bool isAction;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(kdefaultPadding / 4),
        decoration: BoxDecoration(
          border:
              Border.all(color: isAction ? kprimaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
