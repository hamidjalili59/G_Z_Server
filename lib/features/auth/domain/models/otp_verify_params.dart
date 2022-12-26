import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_params.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class OtpVerifyParam {
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String id;
  @HiveField(2)
  final String jwt;

  OtpVerifyParam({
    required this.email,
    required this.id,
    required this.jwt,
  });

  factory OtpVerifyParam.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyParamFromJson(json);

  Map<String, dynamic> toJson() => _$OtpVerifyParamToJson(this);
}
