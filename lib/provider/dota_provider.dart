// ignore_for_file: non_constant_identifier_names

import 'package:dotariverpod/api/dota_api.dart';
import 'package:dotariverpod/models/heroes_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final DotaProvider = FutureProvider<List<HeroesModel>>((ref) async {
  return ref.watch(heroesApiServiceProvider).fetchHeroes();
});
