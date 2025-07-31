import 'package:cloud_firestore/cloud_firestore.dart';

import '../value/enum.dart';
import '../value/keys.dart';

class ModelUser {
  final String uid;
  final Timestamp dateCreate;
  final String? email;
  final String? pw;
  final LoginType loginType;
  final UserType userType;
  final String? nickname;
  final String? imageUrl;
  final String? gender;
  final Country? country;
  final String? location;
  final int? age;
  final String? mbti;
  final int? mannerScore;

  const ModelUser({
    required this.uid,
    required this.dateCreate,
    this.email,
    this.pw,
    required this.loginType,
    this.userType = UserType.user,
    this.nickname,
    this.imageUrl,
    this.gender,
    this.country,
    this.location,
    this.age,
    this.mbti,
    this.mannerScore,
  });

  factory ModelUser.fromJson(Map<String, dynamic> json) {
    return ModelUser(
      uid: json[keyUid] as String,
      dateCreate: json[keyDateCreate] is Timestamp
          ? json[keyDateCreate]
          : Timestamp.fromMillisecondsSinceEpoch(json[keyDateCreate]),
      email: json[keyEmail] as String?,
      pw: json[keyPassword] as String?,
      loginType: LoginType.values.firstWhere((e) => e.name == json[keyLoginType]),
      userType: UserType.values.firstWhere((e) => e.name == json[keyUserType]),
      nickname: json[keyNickName] as String?,
      imageUrl: json[keyImageUrl] as String?,
      gender: json[keyGender] as String?,
      country: json[keyCountry] != null ? Country.values.firstWhere((e) => e.name == json[keyCountry]) : null,
      location: json[keyLocation] as String?,
      age: json[keyAge] as int?,
      mbti: json[keyMbti] as String?,
      mannerScore: json[keyMannerScore] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      keyUid: uid,
      keyDateCreate: dateCreate,
      keyEmail: email,
      keyPassword: pw,
      keyLoginType: loginType.name,
      keyUserType: userType.name,
      keyNickName: nickname,
      keyImageUrl: imageUrl,
      keyGender: gender,
      keyCountry: country?.name,
      keyLocation: location,
      keyAge: age,
      keyMbti: mbti,
      keyMannerScore: mannerScore,
    };
  }

  ModelUser copyWith({
    String? uid,
    Timestamp? dateCreate,
    String? email,
    String? pw,
    LoginType? loginType,
    UserType? userType,
    String? nickname,
    String? imageUrl,
    String? gender,
    Country? country,
    String? location,
    int? age,
    String? mbti,
    int? mannerScore,
  }) {
    return ModelUser(
      uid: uid ?? this.uid,
      dateCreate: dateCreate ?? this.dateCreate,
      email: email ?? this.email,
      pw: pw ?? this.pw,
      loginType: loginType ?? this.loginType,
      userType: userType ?? this.userType,
      nickname: nickname ?? this.nickname,
      imageUrl: imageUrl ?? this.imageUrl,
      gender: gender ?? this.gender,
      country: country ?? this.country,
      location: location ?? this.location,
      age: age ?? this.age,
      mbti: mbti ?? this.mbti,
      mannerScore: mannerScore ?? this.mannerScore,
    );
  }
}