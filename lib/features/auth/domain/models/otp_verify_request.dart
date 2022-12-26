import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_request.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class OtpVerifyRequest {
  @HiveField(0)
  final String code;

  OtpVerifyRequest({required this.code});

  factory OtpVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OtpVerifyRequestToJson(this);
}
