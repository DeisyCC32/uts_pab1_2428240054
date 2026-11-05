class KulinerLombok {
  final String name;
  final String origin;
  final String mainIngredient;
  final String servedWith;
  final String description;
  final String imageAsset;
  final List<String> imageUrls;
  bool isFavorite;

  KulinerLombok({
    required this.name,
    required this.origin,
    required this.mainIngredient,
    required this.servedWith,
    required this.description,
    required this.imageAsset,
    required this.imageUrls,
    this.isFavorite = false,
  });
}