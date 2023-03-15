import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/model/Product.dart';
import 'package:shop_app/screen/components/ColorDot.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset("assets/icons/Heart.svg"),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: kdefaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: kdefaultPadding * 2,
                horizontal: kdefaultPadding,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kdefaultBorderRadius * 3),
                  topRight: Radius.circular(kdefaultBorderRadius * 3),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(width: kdefaultPadding),
                        Text(
                          "\$${product.price}",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: kdefaultPadding),
                      child: Text(
                        "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Text(
                      "Color",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: kdefaultPadding / 2),
                    Row(
                      children: [
                        ColorDot(
                          color: Color(0xFFBEE8EA),
                          isAction: true,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xFF141B4A),
                          isAction: false,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xFFF4E5C3),
                          isAction: false,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: kdefaultPadding * 2),
                    Center(
                      child: SizedBox(
                        height: 48,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: kprimaryColor,
                              shape: const StadiumBorder()),
                          child: const Text("Add to cart"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
