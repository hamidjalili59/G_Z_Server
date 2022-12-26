import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_handshake_request.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class OtpHandshakeRequest {
  @HiveField(0)
  final int verifyCode;

  OtpHandshakeRequest({required this.verifyCode});
  
  factory OtpHandshakeRequest.fromJson(Map<String,dynamic>json) => _$OtpHandshakeRequestFromJson(json);

  Map<String, dynamic> toJson()=> _$OtpHandshakeRequestToJson(this);
}
