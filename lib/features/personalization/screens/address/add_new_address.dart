import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tubes_mobile/common/widgets/appbar/appbar.dart';
import 'package:tubes_mobile/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Add New Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    label: Text(
                      'Name',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    label: Text(
                      'Phone Number',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          label: Text(
                            'Street',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          label: Text(
                            'Postal Code',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          label: Text(
                            'City',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          label: Text(
                            'State',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    label: Text(
                      'Country',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
