import 'package:flutter/material.dart';
import 'package:prj_perpustakaan/models/buku.dart';

class BacabukuScreen extends StatefulWidget {
  final Buku buku;
  const BacabukuScreen({super.key, required this.buku});

  @override
  State<BacabukuScreen> createState() => _BacabukuScreenState();
}

class _BacabukuScreenState extends State<BacabukuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header Tetap
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.deepPurple[50], // Warna latar belakang header
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Tombol Arrow Back
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100]?.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),

                  // Spacer untuk jarak
                  const SizedBox(width: 8),

                  // Judul Buku
                  Expanded(
                    child: Text(
                      widget.buku.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),

            // Konten Bergulir
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Garis Divider
                      Divider(color: Colors.deepPurple.shade100),

                      // Teks Buku
                      Text(
                        widget.buku.teks,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}