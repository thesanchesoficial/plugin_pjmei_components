import 'dart:convert';

class CategoryBlogEntity {
  
  CategoryBlogEntity({
    this.postCount,
    this.fullCategoryPageUrl,
    this.description,
    this.id,
    this.label,
    this.slug,
    this.categoryPageUrl,
    this.coverImage,
    this.language,
  });

  factory CategoryBlogEntity.fromMap(Map<String, dynamic> map) {
    return CategoryBlogEntity(
      postCount: map['postCount']?.toInt() ?? 0,
      fullCategoryPageUrl: map['fullCategoryPageUrl'] ?? '',
      description: map['description'] ?? '',
      id: map['id'] ?? '',
      label: map['label'] ?? '',
      slug: map['slug'] ?? '',
      categoryPageUrl: map['categoryPageUrl'] ?? '',
      coverImage: map['coverImage'] ?? '',
      language: map['language'] ?? '',
    );
  }

  factory CategoryBlogEntity.fromJson(String source) => CategoryBlogEntity.fromMap(json.decode(source));
  int? postCount;
  String? fullCategoryPageUrl;
  String? description;
  String? id;
  String? label;
  String? slug;
  String? categoryPageUrl;
  String? coverImage;
  String? language;

  CategoryBlogEntity copyWith({
    int? postCount,
    String? fullCategoryPageUrl,
    String? description,
    String? id,
    String? label,
    String? slug,
    String? categoryPageUrl,
    String? coverImage,
    String? language,
  }) {
    return CategoryBlogEntity(
      postCount: postCount ?? this.postCount,
      fullCategoryPageUrl: fullCategoryPageUrl ?? this.fullCategoryPageUrl,
      description: description ?? this.description,
      id: id ?? this.id,
      label: label ?? this.label,
      slug: slug ?? this.slug,
      categoryPageUrl: categoryPageUrl ?? this.categoryPageUrl,
      coverImage: coverImage ?? this.coverImage,
      language: language ?? this.language,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'postCount': postCount,
      'fullCategoryPageUrl': fullCategoryPageUrl,
      'description': description,
      'id': id,
      'label': label,
      'slug': slug,
      'categoryPageUrl': categoryPageUrl,
      'coverImage': coverImage,
      'language': language,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'CategoryBlogEntity(postCount: $postCount, fullCategoryPageUrl: $fullCategoryPageUrl, description: $description, id: $id, label: $label, slug: $slug, categoryPageUrl: $categoryPageUrl, coverImage: $coverImage, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CategoryBlogEntity &&
      other.postCount == postCount &&
      other.fullCategoryPageUrl == fullCategoryPageUrl &&
      other.description == description &&
      other.id == id &&
      other.label == label &&
      other.slug == slug &&
      other.categoryPageUrl == categoryPageUrl &&
      other.coverImage == coverImage &&
      other.language == language;
  }

  @override
  int get hashCode {
    return postCount.hashCode ^
      fullCategoryPageUrl.hashCode ^
      description.hashCode ^
      id.hashCode ^
      label.hashCode ^
      slug.hashCode ^
      categoryPageUrl.hashCode ^
      coverImage.hashCode ^
      language.hashCode;
  }
}
