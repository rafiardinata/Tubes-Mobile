import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SubTotal
        Row(
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text(' 150.000', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
