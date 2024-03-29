// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] ?? '',
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      sessionId: json['session_id'] ?? '',
      accessToken: json['access_token'] ?? '',
      accessTokenExpiresAt: json['access_token_expires_at'] == null
          ? null
          : DateTime.parse(json['access_token_expires_at'] as String),
      refreshToken: json['refresh_token'] ?? '',
      refreshTokenExpiresAt: json['refresh_token_expires_at'] == null
          ? null
          : DateTime.parse(json['refresh_token_expires_at'] as String),
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'session_id': instance.sessionId,
      'access_token': instance.accessToken,
      'access_token_expires_at':
          instance.accessTokenExpiresAt?.toIso8601String(),
      'refresh_token': instance.refreshToken,
      'refresh_token_expires_at':
          instance.refreshTokenExpiresAt?.toIso8601String(),
      'user': instance.user.toJson(),
    };

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      passwordChangedAt: json['password_changed_at'] == null
          ? null
          : DateTime.parse(json['password_changed_at'] as String),
      isFirstTime: json['is_first_time'] ?? false,
      avatar: json['avatar'] ?? '',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      address: json['address'] ?? '',
      biometrics: json['biometrics'] ?? false,
      balance: json['balance'] ?? '',
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password_changed_at': instance.passwordChangedAt?.toIso8601String(),
      'is_first_time': instance.isFirstTime,
      'avatar': instance.avatar,
      'created_at': instance.createdAt?.toIso8601String(),
      'address': instance.address,
      'biometrics': instance.biometrics,
      'balance': instance.balance,
    };
