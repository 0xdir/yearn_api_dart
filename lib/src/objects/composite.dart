class Composite {
  /// Current boost of the strategies
  double? boost;

  /// APY of the Curve LP position
  double? poolAPY;

  /// Base APR of Curve emissions
  double? baseAPR;

  /// Boosted APR of Curve emissions
  double? boostedAPR;

  /// APR of Convex rewards
  double? cvxAPR;

  /// APR of additional pool rewards
  double? rewardsAPR;

  Composite({
    this.boost,
    this.poolAPY,
    this.baseAPR,
    this.boostedAPR,
    this.cvxAPR,
    this.rewardsAPR,
  });

  Composite.fromJson(Map<String, dynamic> json) {
    boost = _toDouble(json['boost']);
    poolAPY = _toDouble(json['pool_apy']);
    baseAPR = _toDouble(json['base_apr']);
    boostedAPR = _toDouble(json['boosted_apr']);
    cvxAPR = _toDouble(json['cvx_apr']);
    rewardsAPR = _toDouble(json['rewards_apr']);
  }

  double? _toDouble(value) {
    if (value == null) {
      return null;
    }
    return value.toDouble();
  }
}
