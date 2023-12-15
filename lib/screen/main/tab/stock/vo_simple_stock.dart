class SimpleStock {
  final String stockName;

  const SimpleStock(this.stockName);

  factory SimpleStock.fromJson(dynamic json) {
    return SimpleStock(json['name']);
  }
}
