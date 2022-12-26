// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_handshake_request.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpHandshakeRequestAdapter extends TypeAdapter<OtpHandshakeRequest> {
  @override
  final int typeId = 0;

  @override
  OtpHandshakeRequest read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpHandshakeRequest(
      verifyCode: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, OtpHandshakeRequest obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.verifyCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpHandshakeRequestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpHandshakeRequest _$OtpHandshakeRequestFromJson(Map<String, dynamic> json) =>
    OtpHandshakeRequest(
      verifyCode: json['verifyCode'] as int,
    );

Map<String, dynamic> _$OtpHandshakeRequestToJson(
        OtpHandshakeRequest instance) =>
    <String, dynamic>{
      'verifyCode': instance.verifyCode,
    };
