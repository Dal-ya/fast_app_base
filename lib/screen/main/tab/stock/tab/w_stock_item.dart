import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_stock.dart';
import 'package:flutter/material.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      color: context.backgroundColor,
      child: Row(
        children: [
          width10,
          Image.asset(
            stock.stockImagePath,
            width: 50,
          ),
          width20,
          (stock.name).text.size(16).bold.make(),
          emptyExpanded,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              stock.todayPercentageString.text
                  .color(stock.getPriceColor(context))
                  .make(),
              '${stock.currentPrice.toComma()}원'
                  .text
                  .color(context.appColors.lessImportant)
                  .make(),
            ],
          ),
        ],
      ),
    );
  }
}
