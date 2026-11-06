import 'package:flutter/material.dart';
import '../models/kuliner_lombok_model.dart';

class DetailScreen extends StatelessWidget {
  final KulinerLombok modelKuliner;

  const DetailScreen({
    super.key,
    required this.modelKuliner,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F1E7),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // =========================
            // GAMBAR UTAMA
            // =========================
            Image.asset(
              modelKuliner.imageAsset,
              width: double.infinity,
              height: 280,
              fit: BoxFit.cover,
            ),

            // =========================
            // KONTEN
            // =========================
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // =========================
                  // JUDUL + FAVORIT
                  // =========================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          modelKuliner.name,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF292929),
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Color(0xFFE53935),
                          size: 32,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // ASAL
                  // =========================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xFFE53935),
                        size: 22,
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF444444),
                            ),
                            children: [
                              const TextSpan(
                                text: 'Asal: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: modelKuliner.origin,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // BAHAN UTAMA
                  // =========================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.eco,
                        color: Color(0xFF43A047),
                        size: 22,
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF444444),
                            ),
                            children: [
                              const TextSpan(
                                text: 'Bahan Utama: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: modelKuliner.mainIngredient,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // DISAJIKAN
                  // =========================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.ramen_dining,
                        color: Color(0xFF8D6E63),
                        size: 22,
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF444444),
                            ),
                            children: [
                              const TextSpan(
                                text: 'Disajikan: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: modelKuliner.servedWith,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // =========================
                  // DESKRIPSI
                  // =========================
                  const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF292929),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    modelKuliner.description,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Color(0xFF444444),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // =========================
                  // GALERI
                  // =========================
                  const Text(
                    'Galeri',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF292929),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // =========================
                  // GALERI HORIZONTAL
                  // =========================
                  SizedBox(
                    height: 200,

                    child: Scrollbar(
                      thumbVisibility: true,

                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,

                        itemCount: modelKuliner.imageUrls.length,

                        itemBuilder: (context, index) {
                          return Container(
                            width: 280,

                            margin: const EdgeInsets.only(
                              right: 16,
                              bottom: 12,
                            ),

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),

                              child: Image.network(
                                modelKuliner.imageUrls[index],

                                width: 280,
                                height: 180,

                                fit: BoxFit.cover,

                                loadingBuilder: (
                                  context,
                                  child,
                                  loadingProgress,
                                ) {
                                  if (loadingProgress == null) {
                                    return child;
                                  }

                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },

                                errorBuilder: (
                                  context,
                                  error,
                                  stackTrace,
                                ) {
                                  return Container(
                                    color: const Color(0xFFE5DED5),

                                    child: const Center(
                                      child: Icon(
                                        Icons.broken_image,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // =========================
                  // NAMA + NPM
                  // =========================
                  const Divider(
                    color: Color(0xFFD6CEC4),
                  ),

                  const SizedBox(height: 12),

                  const Center(
                    child: Text(
                      'Deisy Callisca Chandra',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF292929),
                      ),
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Center(
                    child: Text(
                      'NPM: 2428240054',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF555555),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}