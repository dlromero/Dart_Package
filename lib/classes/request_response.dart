// To parse this JSON data, do
//
//     final reqRes = reqResFromJson(jsonString);

import 'dart:convert';

ReqRes reqResFromJson(String str) => ReqRes.fromJson(json.decode(str));

String reqResToJson(ReqRes data) => json.encode(data.toJson());

class ReqRes {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> data;

  ReqRes({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
  });

  factory ReqRes.fromJson(Map<String, dynamic> json) => ReqRes(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Persona {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Persona({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory Persona.fromJson(Map<String, dynamic> json) => Persona(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
