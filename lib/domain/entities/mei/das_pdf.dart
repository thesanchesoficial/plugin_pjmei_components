import 'dart:convert';

class DasPdf {
  String url;
  DasPdf({
    required this.url,
  });

  DasPdf copyWith({
    String? url,
  }) {
    return DasPdf(
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory DasPdf.fromMap(Map<String, dynamic> map) {
    return DasPdf(
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DasPdf.fromJson(String source) =>
      DasPdf.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DasPdf(url: $url)';
}
