import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/model/Product.dart';
import 'package:shop_app/screen/DetailScreen.dart';
import 'package:shop_app/screen/components/ProductCard.dart';
import 'package:shop_app/screen/components/SectionTitle.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: kdefaultPadding),
                child: ProductCard(
                    image: demo_product[index].image,
                    title: demo_product[index].title,
                    price: demo_product[index].price,
                    bgcolor: demo_product[index].bgColor,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  DetailScreen(product: demo_product[index])));
                    }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
