// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.result,
  });

  String? result;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        result: json["Result"],
      );

  Map<String, dynamic> toJson() => {
        "Result": result,
      };
}
