class Buku {
  final String title;
  final String author;
  final String description;
  final String published;
  final String genre;
  final int harga;
  final String imageAsset;
  final List<String> imageUrls;
  bool isFavorite;

  Buku({
    required this.title,
    required this.author,
    required this.description,
    required this.published,
    required this.genre,
    required this.harga,
    required this.imageAsset,
    required this.imageUrls,
    this.isFavorite = false,
  });

}