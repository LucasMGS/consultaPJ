class Address {
  String? street;
  String? number;
  String? details;
  String? zip;
  String? neighborhood;
  String? city;
  String? state;
  String? cityIbge;
  String? stateIbge;

  Address(
      {this.street,
      this.number,
      this.details,
      this.zip,
      this.neighborhood,
      this.city,
      this.state,
      this.cityIbge,
      this.stateIbge});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    number = json['number'];
    details = json['details'];
    zip = json['zip'];
    neighborhood = json['neighborhood'];
    city = json['city'];
    state = json['state'];
    cityIbge = json['city_ibge'];
    stateIbge = json['state_ibge'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['number'] = this.number;
    data['details'] = this.details;
    data['zip'] = this.zip;
    data['neighborhood'] = this.neighborhood;
    data['city'] = this.city;
    data['state'] = this.state;
    data['city_ibge'] = this.cityIbge;
    data['state_ibge'] = this.stateIbge;
    return data;
  }
}
