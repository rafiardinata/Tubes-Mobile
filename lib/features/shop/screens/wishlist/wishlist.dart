import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/common/widgets/appbar/appbar.dart';
import 'package:tubes_mobile/common/widgets/icons/t_circular.icon.dart';
import 'package:tubes_mobile/common/widgets/layouts/grid_layout.dart';
import 'package:tubes_mobile/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:tubes_mobile/features/shop/screens/home/home.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(
              const HomeScreen(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
