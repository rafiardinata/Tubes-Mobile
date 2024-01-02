import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/common/widgets/appbar/appbar.dart';
import 'package:tubes_mobile/common/widgets/images/t_circular_image.dart';
import 'package:tubes_mobile/common/widgets/texts/section_heading.dart';
import 'package:tubes_mobile/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:tubes_mobile/utils/constants/image_strings.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change Profile Pictrue',
                      ),
                    ),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                title: 'Name',
                value: 'Rafi Ardinata Riskiansyah',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Username',
                value: 'rafiardinata',
                onPressed: () {},
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Heading Personal Info
              const TSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                title: 'User ID',
                value: '45678',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'E-Mail',
                value: 'rafiardinata@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+62 81252896841',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Date of Birth',
                value: '25 Dec, 2002',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
