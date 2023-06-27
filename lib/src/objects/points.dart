class Points {
  /// APY calculated from one week sample of pricePerShare
  double? weekAgo;

  /// APY calculated from one month sample of pricePerShare
  double? monthAgo;

  /// APY calculated from the inception block sample of pricePerShare
  double? inception;

  Points({
    this.weekAgo,
    this.monthAgo,
    this.inception,
  });

  Points.fromJson(Map<String, dynamic> json) {
    weekAgo = _toDouble(json['week_ago']);
    monthAgo = _toDouble(json['month_ago']);
    inception = _toDouble(json['inception']);
  }

  double? _toDouble(value) {
    if (value == null) {
      return null;
    }
    return value.toDouble();
  }
}
