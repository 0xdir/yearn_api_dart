class Fees {
  /// Performance fee in bips
  double? performance;

  /// Withdrawal fee in bips
  double? withdrawal;

  /// Management fee in bips
  double? management;

  /// Amount of CRV to keep upon harvest for curve vaults in bips
  double? keepCRV;

  /// Amount of CRV to keep upon harvest for curve convex vaults in bips
  double? cvxKeepCRV;

  Fees({
    this.performance,
    this.withdrawal,
    this.management,
    this.keepCRV,
    this.cvxKeepCRV,
  });

  Fees.fromJson(Map<String, dynamic> json) {
    performance = _toDouble(json['performance']);
    withdrawal = _toDouble(json['withdrawal']);
    management = _toDouble(json['management']);
    keepCRV = _toDouble(json['keep_crv']);
    cvxKeepCRV = _toDouble(json['cvx_keep_crv']);
  }

  double? _toDouble(value) {
    if (value == null) {
      return null;
    }
    return value.toDouble();
  }
}
