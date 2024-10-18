import 'package:flutter/material.dart';
import 'package:snap_buy_app/core/themes/colors_manager.dart';
import 'package:snap_buy_app/core/widgets/custom_app_button.dart';

import 'payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.0),
          PaymentMethodsListView(),
          SizedBox(height: 32.0),
          CustomAppButton(
            disabledBackgroundColor: ColorsManager.redColor,
            // backgroundColor: ColorsManager.redColor,
            width: double.infinity,
            height: 60,
            child: Text('Submit order'),
          ),
          //  CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}
