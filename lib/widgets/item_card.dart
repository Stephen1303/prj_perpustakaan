import 'package:flutter/material.dart';
import 'package:prj_perpustakaan/models/buku.dart';
import 'package:prj_perpustakaan/detail_screen.dart';

class ItemCard extends StatelessWidget {

  final Buku buku; 

  const ItemCard({super.key, required this.buku});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(buku: buku)));
      },
      child: Card(
        //TODO 2 properti
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(8),  
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO 3 image (child)
              Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      buku.imageAsset,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    )),
              ),
            //TODO 4 text (child)
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                buku.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            //TODO 5 text (child)
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                buku.genre,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}