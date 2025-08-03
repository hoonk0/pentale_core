import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pentale_core/const/model/model_user.dart';

import '../value/keys.dart';

// updated class definition
class ModelPublicLetter {
  final String id;
  final ModelUser user;
  final String content;
  final List<String>? hashtags;
  final int? likes;
  final int? replyCount;
  final DateTime dateCreated;

  ModelPublicLetter({
    required this.id,
    required this.user,
    required this.content,
    this.hashtags,
    this.likes,
    this.replyCount,
    required this.dateCreated,
  });

  factory ModelPublicLetter.fromJson(Map<String, dynamic> json, String id) {
    return ModelPublicLetter(
      id: id,
      user: ModelUser.fromJson(json[keyUser] ?? {}),
      content: json[keyContent] ?? '',
      hashtags: json[keyHashtags] != null ? List<String>.from(json[keyHashtags]) : null,
      likes: json[keyLikes],
      replyCount: json[keyReplyCount],
      dateCreated: (json[keyDateCreate] as Timestamp).toDate(),
    );
  }

  // Make sure these constants are defined and imported:
  // const keyUser = 'user';
  // const keyContent = 'content';
  // const keyHashtags = 'hashtags';
  // const keyLikes = 'likes';
  // const keyReplyCount = 'replyCount';
  // const keyDateCreate = 'dateCreated';
  Map<String, dynamic> toJson() {
    return {
      keyUser: user.toJson(),
      keyContent: content,
      if (hashtags != null) keyHashtags: hashtags,
      if (likes != null) keyLikes: likes,
      if (replyCount != null) keyReplyCount: replyCount,
      keyDateCreate: Timestamp.fromDate(dateCreated),
    };
  }

  ModelPublicLetter copyWith({
    String? id,
    ModelUser? user,
    String? content,
    List<String>? hashtags,
    int? likes,
    int? replyCount,
    DateTime? dateCreated,
  }) {
    return ModelPublicLetter(
      id: id ?? this.id,
      user: user ?? this.user,
      content: content ?? this.content,
      hashtags: hashtags ?? this.hashtags,
      likes: likes ?? this.likes,
      replyCount: replyCount ?? this.replyCount,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }
}