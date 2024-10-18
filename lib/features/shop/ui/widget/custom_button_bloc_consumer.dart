import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_buy_app/core/themes/colors_manager.dart';
import 'package:snap_buy_app/core/widgets/custom_app_button.dart';
import 'package:snap_buy_app/features/shop/data/models/payment_intent_input_model.dart';
import 'package:snap_buy_app/features/shop/logic/shop_cubit/payment_cubit.dart';
import 'package:snap_buy_app/features/shop/ui/success_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key, required this.amount});
  final String amount;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const SuccessView();
            }),
          );
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomAppButton(
          onPressed: () async {
            log(amount);
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
              amount: amount,
              currency: 'usd',
              customerId: 'cus_R3QAvU7y40HIdY',
            );
            BlocProvider.of<PaymentCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          disabledBackgroundColor: ColorsManager.redColor,
          backgroundColor: ColorsManager.redColor,
          width: double.infinity,
          height: 60,
          child: const Text('Submit order'),
        );
      },
    );
  }
}