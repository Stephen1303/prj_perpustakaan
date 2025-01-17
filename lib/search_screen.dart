import 'package:flutter/material.dart';
import 'package:prj_perpustakaan/data/buku_data.dart';
import 'package:prj_perpustakaan/detail_screen.dart';
import 'package:prj_perpustakaan/models/buku.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //TODO 1 Variabel
  List<Buku> _filteredBukus = bukuList;
  String _searchQuery = "";
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Listener untuk mengupdate daftar berdasarkan pencarian
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text.toLowerCase();
        _filteredBukus = bukuList.where((buku) {
          return buku.title.toLowerCase().contains(_searchQuery) ||
              buku.author.toLowerCase().contains(_searchQuery);
        }).toList();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2 APPBar
      appBar: AppBar(
        title: Text('Pencarian Buku'),
      ),
      //TODO 3 Body
      body: Column(
        children: [
          //TODO 4 Textfield Search
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple[50]),
              child: TextField(
                controller: _searchController,
                autofocus: false,
                decoration: InputDecoration(
                    hintText: "Cari Buku....",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
              ),
            ),
          ),
          //TODO 5 Listview
          Expanded(
            child: ListView.builder(
                itemCount: _filteredBukus.length,
                itemBuilder: (content, index) {
                  final buku = _filteredBukus[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(buku: buku),
                        ),
                      );
                    },
                    child : Card(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 100,
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                buku.imageAsset,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  buku.title,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(buku.author)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  );
                }),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}