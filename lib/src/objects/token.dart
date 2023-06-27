class Token {
  /// Underlying token name
  String? name;

  /// Underlying token symbol
  String? symbol;

  /// Underlying token address
  String? address;

  /// Underlying token decimal amount
  int? decimals;

  /// Underlying token display name
  String? displayName;

  /// Underlying token icon (usually used as vault display icon)
  String? icon;

  Token({
    this.name,
    this.symbol,
    this.address,
    this.decimals,
    this.displayName,
    this.icon,
  });

  Token.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
    address = json['address'];
    decimals = json['decimals'];
    displayName = json['display_name'];
    icon = json['icon'];
  }
}
