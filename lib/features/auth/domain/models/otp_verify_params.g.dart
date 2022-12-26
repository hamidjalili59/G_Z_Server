// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_params.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpVerifyParamAdapter extends TypeAdapter<OtpVerifyParam> {
  @override
  final int typeId = 2;

  @override
  OtpVerifyParam read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpVerifyParam(
      email: fields[0] as String,
      id: fields[1] as String,
      jwt: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpVerifyParam obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.jwt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpVerifyParamAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyParam _$OtpVerifyParamFromJson(Map<String, dynamic> json) =>
    OtpVerifyParam(
      email: json['email'] as String,
      id: json['id'] as String,
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$OtpVerifyParamToJson(OtpVerifyParam instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'jwt': instance.jwt,
    };
