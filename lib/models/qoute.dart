import 'dart:convert';

import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final String? id;
  final String? author;
  final String? content;
  final List<dynamic>? tags;
  final String? authorSlug;
  final int? length;
  final String? dateAdded;
  final String? dateModified;

  const Quote({
    this.id,
    this.author,
    this.content,
    this.tags,
    this.authorSlug,
    this.length,
    this.dateAdded,
    this.dateModified,
  });

  factory Quote.fromMap(Map<String, dynamic> data) => Quote(
        id: data['_id'] as String?,
        author: data['author'] as String?,
        content: data['content'] as String?,
        tags: data['tags'] as List<dynamic>?,
        authorSlug: data['authorSlug'] as String?,
        length: data['length'] as int?,
        dateAdded: data['dateAdded'] as String?,
        dateModified: data['dateModified'] as String?,
      );

  Map<String, dynamic> toMap() => {
        '_id': id,
        'author': author,
        'content': content,
        'tags': tags,
        'authorSlug': authorSlug,
        'length': length,
        'dateAdded': dateAdded,
        'dateModified': dateModified,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Quote].
  factory Quote.fromJson(String data) {
    return Quote.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Quote] to a JSON string.
  String toJson() => json.encode(toMap());

  Quote copyWith({
    String? id,
    String? author,
    String? content,
    List<dynamic>? tags,
    String? authorSlug,
    int? length,
    String? dateAdded,
    String? dateModified,
  }) {
    return Quote(
      id: id ?? this.id,
      author: author ?? this.author,
      content: content ?? this.content,
      tags: tags ?? this.tags,
      authorSlug: authorSlug ?? this.authorSlug,
      length: length ?? this.length,
      dateAdded: dateAdded ?? this.dateAdded,
      dateModified: dateModified ?? this.dateModified,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      author,
      content,
      tags,
      authorSlug,
      length,
      dateAdded,
      dateModified,
    ];
  }
}
