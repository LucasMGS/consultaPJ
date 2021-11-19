class SimplesNacional {
  Null lastUpdate;
  Null simplesOptant;
  Null simplesIncluded;
  Null simplesExcluded;

  SimplesNacional(
      {this.lastUpdate,
      this.simplesOptant,
      this.simplesIncluded,
      this.simplesExcluded});

  SimplesNacional.fromJson(Map<String, dynamic> json) {
    lastUpdate = json['last_update'];
    simplesOptant = json['simples_optant'];
    simplesIncluded = json['simples_included'];
    simplesExcluded = json['simples_excluded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['last_update'] = this.lastUpdate;
    data['simples_optant'] = this.simplesOptant;
    data['simples_included'] = this.simplesIncluded;
    data['simples_excluded'] = this.simplesExcluded;
    return data;
  }
}
