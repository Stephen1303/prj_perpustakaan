import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:prj_perpustakaan/data/buku_data.dart';
import 'package:prj_perpustakaan/models/buku.dart';

class DetailScreen extends StatefulWidget {
  final Buku buku;

  const DetailScreen({super.key, required this.buku});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;
  bool isSignedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.buku.imageAsset,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100]?.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  //atas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.buku.title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rp'+ widget.buku.harga.toString().replaceAll(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), r'1.'),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children : [
                      IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                      Text(
                        'Favorite'
                      )
                    ],
                  ),

                  //tengah
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          'Author',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(": ${widget.buku.author}")
                    ],
                  ),
                  //bawah
                  Row(
                    children: [
                      const Icon(
                        Icons.book,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          'Genre',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(": ${widget.buku.genre}")
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          'Tahun Terbit',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(": ${widget.buku.published}")
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: Colors.deepPurple.shade100,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(widget.buku.description)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Colors.deepPurple.shade100,
                  ),
                  const Text('Produk Lainnya',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.buku.imageUrls.length,
                      itemBuilder: (content, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: widget.buku.imageUrls[index],
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Tap untuk memperbesar',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}