import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/common/widgets/appbar/appbar.dart';
import 'package:tubes_mobile/common/widgets/icons/t_circular.icon.dart';
import 'package:tubes_mobile/common/widgets/images/t_rounded_image.dart';
import 'package:tubes_mobile/common/widgets/products/cart/add_remove_button.dart';
import 'package:tubes_mobile/common/widgets/products/cart/cart_item.dart';
import 'package:tubes_mobile/common/widgets/texts/product_price_text.dart';
import 'package:tubes_mobile/common/widgets/texts/product_title_text.dart';
import 'package:tubes_mobile/common/widgets/texts/t_brand_title_text_with_verifiend_icon.dart';
import 'package:tubes_mobile/features/shop/screens/checkout/checkout.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        // Items In Cart
        child: TCartItem(),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout Rp 150.000'),
        ),
      ),
    );
  }
}
