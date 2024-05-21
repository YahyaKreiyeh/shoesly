import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/features/discover/data/models/get_products_response.dart';

class ProductItem extends StatelessWidget {
  final ProductsResponse product;

  const ProductItem({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        Routes.productScreen,
        arguments: product.id,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150.w,
            width: 150.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: NetworkImage(product.imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          verticalSpace(10),
          Text(
            product.name,
            style: TextStyles.primaryTextRegular12,
            overflow: TextOverflow.ellipsis,
          ),
          verticalSpace(5),
          Row(
            children: [
              Icon(
                Icons.star,
                color: ColorsManager.yellow,
                size: 12.sp,
              ),
              horizontalSpace(4),
              Text(product.averageRating.toString(),
                  style: TextStyles.primaryTextBold11),
              horizontalSpace(4),
              Text('(${product.reviewCount} Reviews)',
                  style: TextStyles.hintTextRegular11),
            ],
          ),
          verticalSpace(4),
          Text('\$${product.price}.00', style: TextStyles.primaryTextBold14),
        ],
      ),
    );
  }
}
