import 'package:flutter/material.dart';
import 'package:tv_show_bloc/app/utils/app_colors.dart';



extension AppStyles on Never {
  static TextStyle buttonDarkTextStyle = const TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w300,
    fontSize: 15,
  );

  static TextStyle buttonLightTextStyle = textStyleMedium.copyWith(
    color: AppColors.white,
  );

  static TextStyle textStyleSmall = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  static TextStyle textStyleMedium = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
  );

  static TextStyle textStyleLargeBold = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize:19,
  );

  static TextStyle textStyleExtraLarge = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize:21,
  );

  static TextStyle errorTextStyle = const TextStyle(
    color: AppColors.errorTextColor,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
}
