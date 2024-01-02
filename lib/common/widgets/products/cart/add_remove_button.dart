import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/common/widgets/icons/t_circular.icon.dart';
import 'package:tubes_mobile/utils/constants/colors.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';
import 'package:tubes_mobile/utils/helpers/helper_functions.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            Text('2', style: Theme.of(context).textTheme.titleSmall),
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
    );
  }
}
