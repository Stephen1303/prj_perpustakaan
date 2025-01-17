import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:prj_perpustakaan/data/buku_data.dart';
import 'package:prj_perpustakaan/models/buku.dart';
import 'package:flutter/gestures.dart';

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
                      Row(
                        children : [
                          Text(
                            'Favorite'
                          ),
                          IconButton(
                            onPressed: () {}, icon: Icon(Icons.favorite_border)),
                        ],
                      ),
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
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Mulai Baca...',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '');
                            }),
                  )
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
                  Text(widget.buku.description, 
                    textAlign: TextAlign.justify,  
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}