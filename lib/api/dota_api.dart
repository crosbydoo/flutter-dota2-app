import 'dart:convert';
import 'package:dotariverpod/constant/api_constant.dart';
import 'package:dotariverpod/models/heroes_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class DotaApiService {
  Future<List<HeroesModel>> fetchHeroes() async {
    final options = {
      'headers': {
        'Authorization': Authorization,
        'X-RapidAPI-Key': RapidApiKey,
        'X-RapidAPI-Host': RapidApiHost,
      }
    };
    final response =
        await http.get(Uri.parse(api), headers: options['headers']);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((e) => HeroesModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}

final heroesApiServiceProvider = Provider<DotaApiService>((ref) {
  return DotaApiService();
});
