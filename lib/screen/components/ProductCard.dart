import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.bgcolor,
    required this.press,
  });
  final String image, title;
  final int price;
  final Color bgcolor;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(kdefaultPadding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kdefaultBorderRadius),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgcolor,
                  borderRadius: BorderRadius.circular(kdefaultBorderRadius)),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(height: kdefaultPadding / 2),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: kdefaultPadding / 4),
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
