import 'package:flutter/material.dart';
import 'package:tubes_mobile/common/widgets/products/cart/add_remove_button.dart';
import 'package:tubes_mobile/common/widgets/products/cart/cart_item.dart';
import 'package:tubes_mobile/common/widgets/texts/product_price_text.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),

          // Add Remove Button Row With Total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),

                    // Add Remove Button
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                // Product Total Price
                TProductPriceText(price: ' 150.000')
              ],
            ),
        ],
      ),
    );
  }
}
