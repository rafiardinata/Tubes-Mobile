import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/features/authentication/screens/signup/verify_email.dart';
import 'package:tubes_mobile/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                // First Name
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    label: Text(
                      TTexts.firstName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                // Last Name
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    label: Text(
                      TTexts.lastName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    labelStyle: Theme.of(context).textTheme.titleMedium,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              label: Text(
                TTexts.username,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              label: Text(
                TTexts.email,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                TTexts.phoneNo,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                TTexts.password,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Terms & Conditions Checkbox
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
