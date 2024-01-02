import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:tubes_mobile/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tubes_mobile/common/widgets/products/ratings/rating_indicator.dart';
import 'package:tubes_mobile/utils/constants/colors.dart';
import 'package:tubes_mobile/utils/constants/image_strings.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';
import 'package:tubes_mobile/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Bu Mega', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('25 Dec, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show Less',
          trimCollapsedText: ' Show More',
          moreStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Store',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      '25 Dec, 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip. Lorem ipsum dolor sit amet, consectetur adip',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Show Less',
                  trimCollapsedText: ' Show More',
                  moreStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
