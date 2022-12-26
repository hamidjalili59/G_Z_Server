// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_request.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpVerifyRequestAdapter extends TypeAdapter<OtpVerifyRequest> {
  @override
  final int typeId = 1;

  @override
  OtpVerifyRequest read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpVerifyRequest(
      code: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpVerifyRequest obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpVerifyRequestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyRequest _$OtpVerifyRequestFromJson(Map<String, dynamic> json) =>
    OtpVerifyRequest(
      code: json['code'] as String,
    );

Map<String, dynamic> _$OtpVerifyRequestToJson(OtpVerifyRequest instance) =>
    <String, dynamic>{
      'code': instance.code,
    };
