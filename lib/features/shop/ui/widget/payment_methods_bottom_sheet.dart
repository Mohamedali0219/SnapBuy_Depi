import 'package:flutter/material.dart';
import 'package:snap_buy_app/features/shop/ui/widget/custom_button_bloc_consumer.dart';

import 'payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key, required this.amount});
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16.0),
          const PaymentMethodsListView(),
          const SizedBox(height: 32.0),
          CustomButtonBlocConsumer(
            amount: amount,
          ),
        ],
      ),
    );
  }
}
