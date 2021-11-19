import 'package:consultapj/models/address_model.dart';
import 'package:consultapj/models/legal_nature_model.dart';
import 'package:consultapj/models/registration_model.dart';
import 'package:consultapj/models/simples_nacional_model.dart';

class Company {
  String? lastUpdate;
  String? name;
  String? alias;
  String? taxId;
  String? type;
  String? founded;
  String? size;
  int? capital;
  String? email;
  String? phone;
  // Null? phoneAlt;
  // Null? federalEntity;
  Registration? registration;
  Address? address;
  LegalNature? legalNature;
  LegalNature? primaryActivity;
  // List<Null>? secondaryActivities;
  // List<Null>? membership;
  // List<Null>? partnership;
  SimplesNacional? simplesNacional;

  Company(
      {this.lastUpdate,
      this.name,
      this.alias,
      this.taxId,
      this.type,
      this.founded,
      this.size,
      this.capital,
      this.email,
      this.phone,
      // this.phoneAlt,
      // this.federalEntity,
      this.registration,
      this.address,
      this.legalNature,
      this.primaryActivity,
      // this.secondaryActivities,
      // this.membership,
      // this.partnership,
      this.simplesNacional});

  Company.fromJson(Map<String, dynamic> json) {
    lastUpdate = json['last_update'];
    name = json['name'];
    alias = json['alias'];
    taxId = json['tax_id'];
    type = json['type'];
    founded = json['founded'];
    size = json['size'];
    capital = json['capital'];
    email = json['email'];
    phone = json['phone'];
    // phoneAlt = json['phone_alt'];
    // federalEntity = json['federal_entity'];
    registration = json['registration'] != null
        ? new Registration.fromJson(json['registration'])
        : null;
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    legalNature = json['legal_nature'] != null
        ? new LegalNature.fromJson(json['legal_nature'])
        : null;
    primaryActivity = json['primary_activity'] != null
        ? new LegalNature.fromJson(json['primary_activity'])
        : null;
    // if (json['secondary_activities'] != null) {
    //   secondaryActivities = new List<Null>();
    //   json['secondary_activities'].forEach((v) {
    //     secondaryActivities.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['membership'] != null) {
    //   membership = <Null>[];
    //   json['membership'].forEach((v) {
    //     membership.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['partnership'] != null) {
    //   partnership = new List<Null>();
    //   json['partnership'].forEach((v) {
    //     partnership.add(new Null.fromJson(v));
    //   });
    // }
    simplesNacional = json['simples_nacional'] != null
        ? new SimplesNacional.fromJson(json['simples_nacional'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['last_update'] = this.lastUpdate;
    data['name'] = this.name;
    data['alias'] = this.alias;
    data['tax_id'] = this.taxId;
    data['type'] = this.type;
    data['founded'] = this.founded;
    data['size'] = this.size;
    data['capital'] = this.capital;
    data['email'] = this.email;
    data['phone'] = this.phone;
    // data['phone_alt'] = this.phoneAlt;
    // data['federal_entity'] = this.federalEntity;
    // if (this.registration != null) {
    //   data['registration'] = this.registration.toJson();
    // }
    if (this.address != null) {
      data['address'] = this.address?.toJson();
    }
    if (this.legalNature != null) {
      data['legal_nature'] = this.legalNature?.toJson();
    }
    if (this.primaryActivity != null) {
      data['primary_activity'] = this.primaryActivity?.toJson();
    }
    // if (this.secondaryActivities != null) {
    //   data['secondary_activities'] =
    //       this.secondaryActivities.map((v) => v.toJson()).toList();
    // }
    // if (this.membership != null) {
    //   data['membership'] = this.membership.map((v) => v.toJson()).toList();
    // }
    // if (this.partnership != null) {
    //   data['partnership'] = this.partnership.map((v) => v.toJson()).toList();
    // }
    // if (this.simplesNacional != null) {
    //   data['simples_nacional'] = this.simplesNacional.toJson();
    // }
    return data;
  }
}
