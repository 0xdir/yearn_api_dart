class Strategy {
  /// Address of an active strategy
  String? address;

  /// Name of an active strategy
  String? name;

  Strategy({
    this.address,
    this.name,
  });

  Strategy.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    name = json['name'];
  }
}
