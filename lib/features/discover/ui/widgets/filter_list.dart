import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class FilterList extends StatelessWidget {
  static const List<String> filters = [
    "All",
    "Nike",
    "Jordan",
    "Adidas",
    "Reebok"
  ];
  final int selectedIndex = 0;

  const FilterList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: SizedBox(
        height: 30.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: filters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Text(
                filters[index],
                style: selectedIndex == index
                    ? TextStyles.primaryTextBold20
                    : TextStyles.hintTextBold20,
              ),
            );
          },
        ),
      ),
    );
  }
}
