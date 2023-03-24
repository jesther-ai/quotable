import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../qoute.dart';

class QuotesResponse extends Equatable {
  final int? count;
  final int? totalCount;
  final int? page;
  final int? totalPages;
  final int? lastItemIndex;
  final List<Quote>? results;

  const QuotesResponse({
    this.count,
    this.totalCount,
    this.page,
    this.totalPages,
    this.lastItemIndex,
    this.results,
  });

  factory QuotesResponse.fromMap(Map<String, dynamic> data) {
    return QuotesResponse(
      count: data['count'] as int?,
      totalCount: data['totalCount'] as int?,
      page: data['page'] as int?,
      totalPages: data['totalPages'] as int?,
      lastItemIndex: data['lastItemIndex'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Quote.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'count': count,
        'totalCount': totalCount,
        'page': page,
        'totalPages': totalPages,
        'lastItemIndex': lastItemIndex,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [QuotesResponse].
  factory QuotesResponse.fromJson(String data) {
    return QuotesResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [QuotesResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  QuotesResponse copyWith({
    int? count,
    int? totalCount,
    int? page,
    int? totalPages,
    int? lastItemIndex,
    List<Quote>? results,
  }) {
    return QuotesResponse(
      count: count ?? this.count,
      totalCount: totalCount ?? this.totalCount,
      page: page ?? this.page,
      totalPages: totalPages ?? this.totalPages,
      lastItemIndex: lastItemIndex ?? this.lastItemIndex,
      results: results ?? this.results,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      count,
      totalCount,
      page,
      totalPages,
      lastItemIndex,
      results,
    ];
  }
}
