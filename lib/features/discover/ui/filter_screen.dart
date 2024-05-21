import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/widgets/app_elevated_button.dart';
import 'package:shoesly/core/widgets/app_outlined_button.dart';
import 'package:shoesly/core/widgets/custom_app_bar.dart';
import 'package:shoesly/core/widgets/title_text.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  SfRangeValues values = const SfRangeValues(200, 750);
  RangeValues valuesss = const RangeValues(0, 1750);
  double selectedValue = 0.0;
  double lowValue = 400.0;
  double highValue = 1200.0;
  final sortByOptions = [
    'Most recent',
    'Lowest price',
    'Highest price',
  ];
  final genderOptions = [
    'Man',
    'Woman',
    'Unisex',
  ];
  final colorOptions = [
    {'color': ColorsManager.black, 'name': 'Black'},
    {'color': ColorsManager.white, 'name': 'White'},
    {'color': ColorsManager.red, 'name': 'Red'},
  ];
  final List<Map<String, dynamic>> brands = [
    {'name': 'Nike', 'items': 1001, 'image': 'https://picsum.photos/500'},
    {'name': 'Puma', 'items': 601, 'image': 'https://picsum.photos/500'},
    {'name': 'Adidas', 'items': 709, 'image': 'https://picsum.photos/500'},
    {'name': 'Reebok', 'items': 555, 'image': 'https://picsum.photos/500'},
  ];
  String selectedSortOption = 'Most recent';
  String selectedGender = 'Man';
  String selectedColorOption = 'Black';
  String selectedBrand = 'Nike';

  void onSliderChange(RangeValues values) {
    setState(() {
      lowValue = values.start;
      highValue = values.end;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppBar(
            title: 'Filter',
          ),
          const TitleText(title: 'Brands'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: brands.map((brand) {
                bool isSelected = brand['name'] == selectedBrand;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedBrand = brand['name'];
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorsManager.white,
                              radius: 35.w,
                              child: CircleAvatar(
                                backgroundColor: ColorsManager.white,
                                radius: 30.w,
                                backgroundImage: NetworkImage(brand['image']),
                              ),
                            ),
                            if (isSelected)
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: ColorsManager.black,
                                  radius: 15.w,
                                  child: Icon(
                                    Icons.check,
                                    color: ColorsManager.white,
                                    size: 20.w,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          brand['name'],
                          style: const TextStyle(
                            color: ColorsManager.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '${brand['items']} Items',
                          style: const TextStyle(
                            color: ColorsManager.hintText,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const TitleText(title: 'Price Range'),
          SfRangeSliderTheme(
            data: const SfRangeSliderThemeData(
              thumbStrokeWidth: 5,
              thumbColor: ColorsManager.white,
              thumbStrokeColor: ColorsManager.black,
              activeTrackColor: ColorsManager.black,
            ),
            child: SfRangeSlider(
              min: 0,
              max: 1750,
              values: values,
              showLabels: true,
              numberFormat: NumberFormat('\$'),
              onChanged: (SfRangeValues newValues) {
                setState(() {
                  values = newValues;
                });
              },
            ),
          ),
          const TitleText(title: 'Sort By'),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.w),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: sortByOptions.map((option) {
                bool isSelected = option == selectedSortOption;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ChoiceChip(
                    label: Text(option, style: TextStyle(fontSize: 12.sp)),
                    selected: isSelected,
                    onSelected: (bool selected) {
                      setState(() {
                        selectedSortOption = option;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        100.r,
                      ),
                    ),
                    selectedColor: ColorsManager.black,
                    showCheckmark: false,
                    backgroundColor: ColorsManager.white,
                    labelStyle: TextStyle(
                      color: isSelected
                          ? ColorsManager.white
                          : ColorsManager.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const TitleText(title: 'Gender'),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.w),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: genderOptions.map((option) {
                bool isSelected = option == selectedGender;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ChoiceChip(
                    showCheckmark: false,
                    label: Text(option, style: TextStyle(fontSize: 12.sp)),
                    selected: isSelected,
                    onSelected: (bool selected) {
                      setState(() {
                        selectedGender = option;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        100.r,
                      ),
                    ),
                    selectedColor: ColorsManager.black,
                    backgroundColor: ColorsManager.white,
                    labelStyle: TextStyle(
                      color: isSelected
                          ? ColorsManager.white
                          : ColorsManager.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const TitleText(title: 'Color'),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.w),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: colorOptions.map((option) {
                bool isSelected = option['name'] == selectedColorOption;
                bool isWhite = (option['color'] as Color) == Colors.white;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ChoiceChip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    showCheckmark: false,
                    avatar: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: isWhite
                            ? Border.all(
                                color: ColorsManager.colorSelectorBackground,
                                width: 1.0)
                            : null,
                      ),
                      child: CircleAvatar(
                        backgroundColor: option['color'] as Color,
                        radius: 10,
                      ),
                    ),
                    label: Text(option['name'] as String,
                        style: TextStyle(fontSize: 12.sp)),
                    selected: isSelected,
                    onSelected: (bool selected) {
                      setState(() {
                        selectedColorOption = option['name'] as String;
                      });
                    },
                    selectedColor: ColorsManager.white,
                    backgroundColor: ColorsManager.white,
                    labelStyle: TextStyle(
                      color: isSelected
                          ? ColorsManager.black
                          : ColorsManager.black,
                      fontWeight: FontWeight.bold,
                    ),
                    side: BorderSide(
                      color: isSelected
                          ? ColorsManager.black
                          : ColorsManager.colorSelectorBackground,
                      width: 1,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          verticalSpace(20),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: ColorsManager.white,
          boxShadow: [
            BoxShadow(
              color: ColorsManager.navBarBackground,
              offset: Offset(0, -20),
              blurRadius: 30,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
            vertical: 16.h,
          ),
          child: Row(
            children: [
              Expanded(
                child: AppOutlinedButton(
                  text: 'RESET (4)',
                  onPressed: () {},
                ),
              ),
              horizontalSpace(15),
              Expanded(
                child: AppElevatedButton(
                  text: 'APPLY',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
