import 'package:flutter/material.dart';
import 'package:prj_perpustakaan/data/buku_data.dart';
import 'package:prj_perpustakaan/models/buku.dart';
import 'package:prj_perpustakaan/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buku"),
      ),
      //TODO 1 APP bar
      //TODO 2 BODY
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8),
          itemCount: bukuList.length,
          itemBuilder: (context, index) {
            //TODO 3 Item card
            Buku buku = bukuList[index];
            return ItemCard(buku: buku);
          }),
    );
  }
}