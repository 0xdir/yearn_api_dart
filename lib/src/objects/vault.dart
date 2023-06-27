import 'apy.dart';
import 'strategy.dart';
import 'token.dart';
import 'tvl.dart';

/// The Result class is designed to match the structure
/// of the provided JSON object.
///
/// Each class has a fromJson named constructor that accepts
/// a JSON object and populates the class fields accordingly.
///
/// All fields in the classes are marked as optional (?)
/// since the JSON object's properties may be optional.
class Vault {
  /// Checksummed address of the vault
  String? address;

  /// The block number a vault was created at
  int? inception;

  /// Vault token symbol (used primarily in MetaMask)
  String? symbol;

  /// Vault token name
  String? name;

  /// Vault name as displayed in UI (usually based on underlying symbol)
  String? displayName;

  /// Vault token icon URL
  String? icon;

  /// Underlying vault token metadata
  Token? token;

  /// TVL information about a vault
  TVL? tvl;

  /// Vault APY metadata
  APY? apy;

  /// A list of active vault strategies
  List<Strategy>? strategies;

  /// True if the vault is an endorsed production vault. Do not show the vault if it's not endorsed
  bool? endorsed;

  /// API version of the vault
  String? version;

  /// Number of decimals for the vault token
  int? decimals;

  /// High-level vault classification. Valid options are v1 and v2
  String? type;

  /// If true, the vault is in shut-down mode, and no new deposits should be accepted
  bool? emergencyShutdown;

  /// Unix timestamp of the last vault update
  int? updated;

  Vault({
    this.address,
    this.inception,
    this.symbol,
    this.name,
    this.displayName,
    this.icon,
    this.token,
    this.tvl,
    this.apy,
    this.strategies,
    this.endorsed,
    this.version,
    this.decimals,
    this.type,
    this.emergencyShutdown,
    this.updated,
  });

  Vault.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    inception = json['inception'];
    symbol = json['symbol'];
    name = json['name'];
    displayName = json['display_name'];
    icon = json['icon'];
    token = json['token'] != null ? Token.fromJson(json['token']) : null;
    tvl = json['tvl'] != null ? TVL.fromJson(json['tvl']) : null;
    apy = json['apy'] != null ? APY.fromJson(json['apy']) : null;
    if (json['strategies'] != null) {
      strategies = [];
      json['strategies'].forEach((strategy) {
        strategies!.add(Strategy.fromJson(strategy));
      });
    }
    endorsed = json['endorsed'];
    version = json['version'];
    decimals = json['decimals'];
    type = json['type'];
    emergencyShutdown = json['emergency_shutdown'];
    updated = json['updated'];
  }
}
