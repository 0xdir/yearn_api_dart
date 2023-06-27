import 'composite.dart';
import 'fees.dart';
import 'points.dart';

class APY {
  /// APY type. Options are v2:simple, v2:averaged, v1:simple, crv
  String? type;

  /// Uncompounded gross APR before fees
  double? grossAPR;

  /// Net APY (compounded) after fees. This is what the UI shows
  double? netAPY;

  /// Fee structure breakdown for a vault
  Fees? fees;

  /// APY samples for various timeframes
  Points? points;

  /// Complex APY breakdown (for curve vaults)
  Composite? composite;

  APY({
    this.type,
    this.grossAPR,
    this.netAPY,
    this.fees,
    this.points,
    this.composite,
  });

  APY.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    grossAPR = _toDouble(json['gross_apr']);
    netAPY = _toDouble(json['net_apy']);
    fees = json['fees'] != null ? Fees.fromJson(json['fees']) : null;
    points = json['points'] != null ? Points.fromJson(json['points']) : null;
    composite = json['composite'] != null
        ? Composite.fromJson(json['composite'])
        : null;
  }

  double? _toDouble(value) {
    if (value == null) {
      return null;
    }
    return value.toDouble();
  }
}
