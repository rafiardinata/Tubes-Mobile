import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/common/widgets/appbar/appbar.dart';
import 'package:tubes_mobile/common/widgets/icons/t_circular.icon.dart';
import 'package:tubes_mobile/common/widgets/images/t_rounded_image.dart';
import 'package:tubes_mobile/common/widgets/products/cart/cart_item.dart';
import 'package:tubes_mobile/common/widgets/texts/product_title_text.dart';
import 'package:tubes_mobile/common/widgets/texts/t_brand_title_text_with_verifiend_icon.dart';
import 'package:tubes_mobile/utils/constants/colors.dart';
import 'package:tubes_mobile/utils/constants/image_strings.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';
import 'package:tubes_mobile/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) =>
                const SizedBox(height: TSizes.spaceBtwSections),
            itemCount: 4,
            itemBuilder: (_, index) => Column(
              children: [
                TCartItem(),
                SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  children: [
                    const SizedBox(width: 70),
                    // Add Remove Buttons
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TCircularIcon(
                          icon: Iconsax.minus,
                          width: 32,
                          height: 32,
                          size: TSizes.md,
                          color: THelperFunctions.isDarkMode(context)
                              ? TColors.white
                              : TColors.black,
                          backgroundColor: THelperFunctions.isDarkMode(context)
                              ? TColors.darkerGrey
                              : TColors.light,
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        Text('2',
                            style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        TCircularIcon(
                          icon: Iconsax.add,
                          width: 32,
                          height: 32,
                          size: TSizes.md,
                          color: TColors.white,
                          backgroundColor: TColors.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
