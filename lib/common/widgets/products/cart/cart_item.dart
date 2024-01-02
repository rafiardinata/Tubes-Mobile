import 'package:flutter/material.dart';
import 'package:tubes_mobile/common/widgets/images/t_rounded_image.dart';
import 'package:tubes_mobile/common/widgets/texts/product_title_text.dart';
import 'package:tubes_mobile/common/widgets/texts/t_brand_title_text_with_verifiend_icon.dart';
import 'package:tubes_mobile/utils/constants/colors.dart';
import 'package:tubes_mobile/utils/constants/image_strings.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';
import 'package:tubes_mobile/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        // Title, Price, & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: const TProductTitleText(
                  title: 'Black Sports Shoes',
                  maxLines: 1,
                ),
              ),
              // Attributes
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '39 ',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
