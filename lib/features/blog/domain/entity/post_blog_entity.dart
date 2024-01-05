import 'dart:convert';

import 'package:flutter/foundation.dart';

class PostBlogEntity {

  PostBlogEntity({
    this.publishedDate,
    this.language,
    this.pinned,
    this.categories,
    this.hashtags,
    this.postPageUrl,
    this.title,
    this.excerpt,
    this.mainCategory,
    this.likeCount,
    this.commentCount,
    this.viewCount,
    this.timeToRead,
    this.id,
    this.slug,
    this.coverImage,
  });

  factory PostBlogEntity.fromMap(Map<String, dynamic> map) {
    return PostBlogEntity(
      publishedDate: map['publishedDate'] ?? '',
      language: map['language'] ?? '',
      pinned: map['pinned'] ?? false,
      categories: List<String>.from(map['categories']),
      hashtags: List<String>.from(map['hashtags']),
      postPageUrl: map['postPageUrl'] ?? '',
      title: map['title'] ?? '',
      excerpt: map['excerpt'] ?? '',
      mainCategory: map['mainCategory'] ?? '',
      likeCount: map['likeCount']?.toInt() ?? 0,
      commentCount: map['commentCount']?.toInt() ?? 0,
      viewCount: map['viewCount']?.toInt() ?? 0,
      timeToRead: map['timeToRead']?.toInt() ?? 0,
      id: map['_id'] ?? map['id'] ?? '',
      slug: map['slug'] ?? '',
      coverImage: map['coverImage'] ?? '',
    );
  }

  factory PostBlogEntity.fromJson(String source) => PostBlogEntity.fromMap(json.decode(source));
  String? publishedDate;
  String? language;
  bool? pinned;
  List<String>? categories;
  List<String>? hashtags;
  String? postPageUrl;
  String? title;
  String? excerpt;
  String? mainCategory;
  int? likeCount;
  int? commentCount;
  int? viewCount;
  int? timeToRead;
  String? id;
  String? slug;
  String? coverImage;

  PostBlogEntity copyWith({
    String? publishedDate,
    String? language,
    bool? pinned,
    List<String>? categories,
    List<String>? hashtags,
    String? postPageUrl,
    String? title,
    String? excerpt,
    String? mainCategory,
    int? likeCount,
    int? commentCount,
    int? viewCount,
    int? timeToRead,
    String? id,
    String? slug,
    String? coverImage,
  }) {
    return PostBlogEntity(
      publishedDate: publishedDate ?? this.publishedDate,
      language: language ?? this.language,
      pinned: pinned ?? this.pinned,
      categories: categories ?? this.categories,
      hashtags: hashtags ?? this.hashtags,
      postPageUrl: postPageUrl ?? this.postPageUrl,
      title: title ?? this.title,
      excerpt: excerpt ?? this.excerpt,
      mainCategory: mainCategory ?? this.mainCategory,
      likeCount: likeCount ?? this.likeCount,
      commentCount: commentCount ?? this.commentCount,
      viewCount: viewCount ?? this.viewCount,
      timeToRead: timeToRead ?? this.timeToRead,
      id: id ?? this.id,
      slug: slug ?? this.slug,
      coverImage: coverImage ?? this.coverImage,
    );
  }

  @override
  String toString() {
    return 'PostBlogEntity(publishedDate: $publishedDate, language: $language, pinned: $pinned, categories: $categories, hashtags: $hashtags, postPageUrl: $postPageUrl, title: $title, excerpt: $excerpt, mainCategory: $mainCategory, likeCount: $likeCount, commentCount: $commentCount, viewCount: $viewCount, timeToRead: $timeToRead, id: $id, slug: $slug, coverImage: $coverImage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PostBlogEntity &&
      other.publishedDate == publishedDate &&
      other.language == language &&
      other.pinned == pinned &&
      listEquals(other.categories, categories) &&
      listEquals(other.hashtags, hashtags) &&
      other.postPageUrl == postPageUrl &&
      other.title == title &&
      other.excerpt == excerpt &&
      other.mainCategory == mainCategory &&
      other.likeCount == likeCount &&
      other.commentCount == commentCount &&
      other.viewCount == viewCount &&
      other.timeToRead == timeToRead &&
      other.id == id &&
      other.slug == slug &&
      other.coverImage == coverImage;
  }

  @override
  int get hashCode {
    return publishedDate.hashCode ^
      language.hashCode ^
      pinned.hashCode ^
      categories.hashCode ^
      hashtags.hashCode ^
      postPageUrl.hashCode ^
      title.hashCode ^
      excerpt.hashCode ^
      mainCategory.hashCode ^
      likeCount.hashCode ^
      commentCount.hashCode ^
      viewCount.hashCode ^
      timeToRead.hashCode ^
      id.hashCode ^
      slug.hashCode ^
      coverImage.hashCode;
  }
  
  Map<String, dynamic> toMap() {
    return {
      'publishedDate': publishedDate,
      'language': language,
      'pinned': pinned,
      'categories': categories,
      'hashtags': hashtags,
      'postPageUrl': postPageUrl,
      'title': title,
      'excerpt': excerpt,
      'mainCategory': mainCategory,
      'likeCount': likeCount,
      'commentCount': commentCount,
      'viewCount': viewCount,
      'timeToRead': timeToRead,
      'id': id,
      'slug': slug,
      'coverImage': coverImage,
    };
  }

  String toJson() => json.encode(toMap());
}
