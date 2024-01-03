import 'package:flutter/material.dart';
import 'package:tubes_mobile/common/widgets/appbar/appbar.dart';
import 'package:tubes_mobile/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tubes_mobile/common/widgets/products/cart/coupon_widget.dart';
import 'package:tubes_mobile/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:tubes_mobile/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:tubes_mobile/utils/constants/colors.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';
import 'package:tubes_mobile/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Order Review',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Items in Cart
                const TCartItems(showAddRemoveButtons: false),
                const SizedBox(height: TSizes.spaceBtwSections),

                // Voucher Textfield
                TVoucherCode(),
                const SizedBox(height: TSizes.spaceBtwSections),

                // Billing Section
                TRoundedContainer(
                  showBorder: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: Column(
                    children: [
                      // Pricing
                      TBillingPaymentSection(),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      // Divider
                      const Divider(),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      // Payment Methods
                      // Address
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
