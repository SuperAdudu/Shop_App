import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/model/Category.dart';
import 'package:shop_app/model/Product.dart';
import 'package:shop_app/screen/components/CategoryList.dart';
import 'package:shop_app/screen/components/NewArrival.dart';
import 'package:shop_app/screen/components/Popular.dart';
import 'package:shop_app/screen/components/ProductCard.dart';
import 'package:shop_app/screen/components/SearchForm.dart';
import 'package:shop_app/screen/components/SectionTitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: kdefaultPadding / 2),
            Text(
              "369 Nguyen Trai",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kdefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "best Outfit for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: kdefaultPadding),
              child: SearchForm(),
            ),
            const CategoryList(),
            const SizedBox(height: kdefaultPadding),
            const NewArrival(),
            const SizedBox(height: kdefaultPadding),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
