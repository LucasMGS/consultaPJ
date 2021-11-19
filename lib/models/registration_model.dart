class Registration {
  String? status;
  String? statusDate;

  Registration({
    this.status,
    this.statusDate,
  });

  Registration.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusDate = json['status_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_date'] = this.statusDate;
    return data;
  }
}
