import 'package:dotariverpod/screens/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const ProviderScope(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dota 2 API',
        home: OnBoardView(),
      ),
    ),
  );
}
