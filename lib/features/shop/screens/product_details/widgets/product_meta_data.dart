import 'package:flutter/material.dart';
import 'package:tubes_mobile/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tubes_mobile/common/widgets/images/t_circular_image.dart';
import 'package:tubes_mobile/common/widgets/texts/product_price_text.dart';
import 'package:tubes_mobile/common/widgets/texts/product_title_text.dart';
import 'package:tubes_mobile/common/widgets/texts/t_brand_title_text_with_verifiend_icon.dart';
import 'package:tubes_mobile/utils/constants/colors.dart';
import 'package:tubes_mobile/utils/constants/enums.dart';
import 'package:tubes_mobile/utils/constants/image_strings.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';
import 'package:tubes_mobile/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '10%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            // Price
            Text('Rp 149.000',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(
              price: ' 134.000',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            TBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSizes: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
