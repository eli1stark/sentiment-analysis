import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'key.dart';
import 'model.dart';

class APIService {
  static const String _baseURL =
      'https://twinword-emotion-analysis-v1.p.rapidapi.com/analyze/';

  static const Map<String, String> _headers = {
    'content-type': 'application/x-www-form-urlencoded',
    'x-rapidapi-host': 'twinword-emotion-analysis-v1.p.rapidapi.com',
    'x-rapidapi-key': api_key,
    'useQueryString': 'true',
  };

  Future<SentAna> post({
    @required Map<String, String> query,
  }) async {
    final response = await http.post(
      _baseURL,
      headers: _headers,
      body: query,
    );

    if (response.statusCode == 200) {
      print('success' + response.body);
      return SentAna.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception(
        'Failed to load json data',
      );
    }
  }
}
