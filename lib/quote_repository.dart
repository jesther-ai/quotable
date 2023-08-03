import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'models/qoute.dart';
import 'models/quotes_response/quotes_response.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class QuoteRepository {
// =================================================================
//                         APIs for Quotes
// =================================================================
  Future<List<Quote?>> loadQuotes({
    required int page,
    required int limit,
  }) async {
    final io.Socket socket = io.io(
      'https://racerchat.wfadev.cloud:80',
      io.OptionBuilder()
          .enableForceNew()
          .setTransports([
            'websocket',
            'polling',
          ])
          .setQuery({
            'token': '6099af39d4141',
          })
          .setPath('')
          .enableAutoConnect()
          .build(),
    );
    print('exec');
    print(socket.flags);
    print(socket.io.uri);
    print(socket.io.options);
    print(socket.io.engine.uri);
    print(socket.io.engine.path);
    socket.connect();
    socket.onConnect((data) {
      print('Success COnnect');
      socket.on(
        'connect',
        (data) => print('connect: $data'),
      );
    });

    socket.onConnectError(
      (data) {
        print('Error=> $data');
        socket.dispose();
      },
    );

    final uri = Uri(
      scheme: 'https',
      host: 'api.quotable.io',
      path: '/quotes',
      queryParameters: {
        'page': '$page',
        'limit': '$limit',
      },
    );

    final response = await http.get(
      uri,
    );

    __printer(response: response);
    if (response.statusCode == 200) {
      var list = QuotesResponse.fromJson(response.body);

      final listQuotes = <Quote?>[];
      for (var i = 0; i < (list.results?.length ?? 0); i++) {
        listQuotes.add(list.results?[i]);
      }
      return listQuotes;
    } else {
      debugPrint('ERROR IN API CALL ${response.statusCode}');
      throw Exception('Failed to load API data');
    }
  }

  Future<Quote?> loadQuoteDetails({
    required String quoteId,
  }) async {
    final uri = Uri(
      scheme: 'https',
      host: 'api.quotable.io',
      path: '/quotes/:$quoteId',
    );

    final response = await http.get(
      uri,
    );

    __printer(response: response);
    if (response.statusCode == 200) {
      return Quote.fromJson(response.body);
    } else {
      debugPrint('ERROR IN API CALL ${response.statusCode}');
      throw Exception('Failed to load API data');
    }
  }

// =================================================================
//                         OTHER Functions
// =================================================================
  void __printer({
    http.MultipartRequest? request,
    http.Response? response,
  }) {
    if (request != null) {
      debugPrint('');
      debugPrint(
        '|-------------------------------------------------------------------------------',
      );
      debugPrint('| 1              REQUEST');
      debugPrint(
        '|-------------------------------------------------------------------------------',
      );

      debugPrint('| ${request.method} --> ${request.url}');
      for (var i = 0; i < (request.url.pathSegments.length); i++) {
        debugPrint(
          '| PATH (${i + 1}) --> ${request.url.pathSegments[i]}',
        );
      }
      request.url.queryParameters.forEach((key, value) {
        debugPrint('| QUERY PARAMETERS --> $key : $value');
      });
      request.headers.forEach((key, value) {
        debugPrint('| HEADER --> $key : $value');
      });

      request.fields.forEach((key, value) {
        debugPrint('| BODY --> $key : $value');
      });
      debugPrint(
        '|_______________________________________________________________________________',
      );

      debugPrint('');
    }

    if (response != null) {
      debugPrint(
        '|-------------------------------------------------------------------------------',
      );
      debugPrint('| 2              RESPONSE ${response.statusCode}');
      debugPrint(
        '|-------------------------------------------------------------------------------',
      );
      debugPrint(
        '| ${response.request!.method} --> ${response.request!.url}',
      );
      for (var i = 0;
          i < (response.request?.url.pathSegments.length ?? 0);
          i++) {
        debugPrint(
          '| PATH (${i + 1}) --> ${response.request!.url.pathSegments[i]}',
        );
      }
      response.request!.url.queryParameters.forEach((key, value) {
        debugPrint('| QUERY PARAMETERS --> $key : $value');
      });
      debugPrint('| STATUS CODE --> ${response.statusCode}');
      response.headers.forEach((key, value) {
        debugPrint('| HEADER --> $key : $value');
      });
      debugPrint('| BODY SIZE --> ${response.bodyBytes.length}bytes');

      if (response.statusCode == 200) {
        final map = json.decode(response.body);
        if (map is Map) {
          map.forEach((key, value) {
            if (value is List) {
              debugPrint(
                '| ARRAY BODY --> $key : ${value.length} item(s) (array)',
              );
            } else {
              debugPrint('| BODY --> $key : $value');
            }
          });
        }
        if (map is List) {
          debugPrint(
            '| ARRAY BODY -->  ${map.length} item(s) (array)',
          );
          // for (var i = 0; i < map.length; i++) {
          // map[i].forEach((key, value) {
          //   if (value is List) {
          //     debugPrint(
          //       '| ARRAY BODY --> $key : ${value.length} item(s) (array)',
          //     );
          //   } else {
          //     debugPrint('| BODY [$i] --> $key : $value');
          //   }
          // });
          // }
        }
      }
      debugPrint(
        '|-------------------------------------------------------------------------------',
      );
    }
  }
}
