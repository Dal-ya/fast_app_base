import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract mixin class StockPercentageDataProvider {
  int get currentPrice;

  int get yesterdayClosePrice;

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toPrecision(2);

  String get todayPercentageString => '$symbol$todayPercentage%';

  bool get isPlus => currentPrice > yesterdayClosePrice;

  bool get isSame => currentPrice == yesterdayClosePrice;

  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isSame
      ? ''
      : isPlus
          ? '+'
          : '';

  Color? getPriceColor(BuildContext context) {
    if (isSame) {
      return context.appColors.lessImportant;
    } else if (isPlus) {
      return context.appColors.plus;
    } else {
      return context.appColors.minus;
    }
  }
}
