
import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

class Api {
  static const String baseUrl = 'http://192.168.1.19:5000';

  static Future<Map<String, dynamic>> post(
      Map<String, dynamic> body,
      String url,
      ) async {

    try {
      var headers = {
        'Content-Type': 'application/json',
        'Content-Length':'<calculated when request is sent>',
        'Accept':'*/*',
        'Accept-Encoding':'gzip,deflate,br',
        'Connection':'keep-alive'

      };

      final response = await http.post(
        Uri.parse('$baseUrl/$url'),
        headers: headers,
        body: json.encode(body),
      );

      log('Response Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        print('Success');
        return json.decode(response.body);
      } else {
        print('Error: ${response.reasonPhrase}');
        throw HttpException('Failed to post data');
      }
    } catch (e) {
      if (e is SocketException) {
        print('Error: Network error - ${e.message}');
      } else if (e is HttpException) {
        print('Error: HTTP exception - ${e.message}');
      } else {
        print('Error: $e');
      }
      rethrow;
    }
  }
}


