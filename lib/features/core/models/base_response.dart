import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class BaseResponse {
  @HiveField(0)
  final int statusCode;
  @HiveField(1)
  final String message;
  @HiveField(2)
  final Map<String, dynamic> payload;

  BaseResponse({
    required this.statusCode,
    required this.message,
    required this.payload,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
