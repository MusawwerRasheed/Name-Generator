
import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../../../Application/Services/APIServices/api_services.dart';
import '../../../Domain/human_model.dart';

class TwinsRepository {
  static const String url = 'generatetwinsname';
  static Future<Map <String, dynamic>> generateTwinsName({
    required Map<String, dynamic> data,
  }) async {
    try {
      return  await Api.post(data, url, ).then((value){
        print(value);
        return value;
      } ).catchError((e){
        throw e;
      });
    } catch (e) {
      rethrow;
      print('Error in HumanRepository: $e');
      throw Exception('Failed to generate human name');
    }
  }
}


