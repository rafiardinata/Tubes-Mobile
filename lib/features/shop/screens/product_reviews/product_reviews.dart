import 'package:flutter/material.dart';
import 'package:tubes_mobile/common/widgets/appbar/appbar.dart';
import 'package:tubes_mobile/common/widgets/products/ratings/rating_indicator.dart';
import 'package:tubes_mobile/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:tubes_mobile/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: TSizes.spaceBtwItems),

              // Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
