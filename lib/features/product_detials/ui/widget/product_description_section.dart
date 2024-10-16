import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_buy_app/core/themes/colors_manager.dart';
import 'package:snap_buy_app/core/themes/text_styles.dart';
import 'package:snap_buy_app/features/home/data/model/product/product_model.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          padding: const EdgeInsets.only(left: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            product.title,
            style: TextStyles.styleBold(
              context,
              color: ColorsManager.redColor,
              fontSize: 24.sp,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              '£${product.price}',
              style: TextStyles.styleBold(
                context,
                fontSize: 22.sp,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '£${(product.price * (1 - product.discountPercentage / 100)).toStringAsFixed(2)}',
              style: TextStyles.styleBold(
                context,
                fontSize: 20.sp,
                color: ColorsManager.redColor,
              ),
            ),
            const Spacer(),
            const Icon(Icons.star, color: Colors.orange, size: 25),
            SizedBox(width: 4.w),
            Text(product.rating.toString(),
                style: TextStyles.styleBold(
                  context,
                  fontSize: 18.sp,
                )),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Stock: ${product.stock}',
          style: TextStyles.styleBold(
            context,
            fontSize: 18.sp,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        // Description
        Text("Description",
            style: TextStyles.styleBold(
              context,
              fontSize: 22.sp,
            )),
      ],
    );
  }
}
