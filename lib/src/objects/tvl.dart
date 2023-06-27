class TVL {
  /// TVL in underlying token denomination
  BigInt? totalAssets;

  /// Token price in USD
  double? price;

  /// TVL in USD
  double? tvl;

  TVL({
    this.totalAssets,
    this.price,
    this.tvl,
  });

  TVL.fromJson(Map<String, dynamic> json) {
    totalAssets = _toBigInt(json['total_assets']);
    price = _toDouble(json['price']);
    tvl = _toDouble(json['tvl']);
  }

  double? _toDouble(value) {
    if (value == null) {
      return null;
    }
    return value.toDouble();
  }

  BigInt? _toBigInt(value) {
    if (value == null) {
      return null;
    }
    return BigInt.from(value);
  }
}
