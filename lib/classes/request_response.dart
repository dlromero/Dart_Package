// To parse this JSON data, do
//
//     final reqRes = reqResFromJson(jsonString);

import 'dart:convert';

import 'persona.dart';

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
