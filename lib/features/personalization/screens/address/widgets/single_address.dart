import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tubes_mobile/utils/constants/colors.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';
import 'package:tubes_mobile/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress
                  ? dark
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rafi Ardinata',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm / 2),
              const Text(
                '+62 81252896841',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: TSizes.sm / 2),
              const Text(
                '62581 Kota Surabaya, Kabupaten Sidoarjo, Jawa Timur',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
