import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token extends Equatable {
  @JsonKey(name: 'AuthenticationToken')
  String? authenticationToken;
  @JsonKey(name: 'RefreshToken')
  String? refreshToken;
  Token();

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @override
  List<Object?> get props => [authenticationToken, refreshToken];
}
