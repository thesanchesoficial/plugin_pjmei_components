import 'dart:convert';

class NfDocumentEntity {
  String? documentid;
  String? documentnumber;
  NfDocumentEntity({
    this.documentid,
    this.documentnumber,
  });

  NfDocumentEntity copyWith({
    String? documentid,
    String? documentnumber,
  }) {
    return NfDocumentEntity(
      documentid: documentid ?? this.documentid,
      documentnumber: documentnumber ?? this.documentnumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'document_type': documentid,
      'document_number': documentnumber,
    };
  }

  factory NfDocumentEntity.fromMap(Map<String, dynamic> map) {
    return NfDocumentEntity(
      documentid: map['document_type'] as String,
      documentnumber: map['document_number'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NfDocumentEntity.fromJson(String source) =>
      NfDocumentEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DocumentEntity(documentid: $documentid, documentnumber: $documentnumber)';
}
