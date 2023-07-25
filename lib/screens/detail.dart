import 'package:dotariverpod/provider/dota_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailView extends ConsumerWidget {
  const DetailView({super.key, required this.getIndex});

  final int getIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailData = ref.watch(DotaProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
        ],
        title: Text(
          'Dota 2 API',
          style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            detailData.when(
              data: (data) => Text('${data[getIndex].name}'),
              error: ((error, stackTrace) => const Text('error')),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
