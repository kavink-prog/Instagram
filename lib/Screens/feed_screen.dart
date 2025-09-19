import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://picsum.photos/id/237/400/400",
      "https://picsum.photos/id/238/400/400",
      "https://picsum.photos/id/239/400/400",
      "https://picsum.photos/id/240/400/400",
      "https://picsum.photos/id/241/400/400",
      "https://picsum.photos/id/242/400/400",
      "https://picsum.photos/id/243/400/400",
      "https://picsum.photos/id/244/400/400",
      "https://picsum.photos/id/245/400/400",
      "https://picsum.photos/id/246/400/400",
      "https://picsum.photos/id/237/400/400",
      "https://picsum.photos/id/238/400/400",
      "https://picsum.photos/id/239/400/400",
      "https://picsum.photos/id/240/400/400",
      "https://picsum.photos/id/241/400/400",
      "https://picsum.photos/id/242/400/400",
      "https://picsum.photos/id/243/400/400",
      "https://picsum.photos/id/244/400/400",
      "https://picsum.photos/id/245/400/400",
      "https://picsum.photos/id/246/400/400",
      "https://picsum.photos/id/237/400/400",
      "https://picsum.photos/id/238/400/400",
      "https://picsum.photos/id/239/400/400",
      "https://picsum.photos/id/240/400/400",
      "https://picsum.photos/id/241/400/400",
      "https://picsum.photos/id/242/400/400",
      "https://picsum.photos/id/243/400/400",
      "https://picsum.photos/id/244/400/400",
      "https://picsum.photos/id/245/400/400",
      "https://picsum.photos/id/246/400/400",
      "https://picsum.photos/id/237/400/400",
      "https://picsum.photos/id/238/400/400",
      "https://picsum.photos/id/239/400/400",
      "https://picsum.photos/id/240/400/400",
      "https://picsum.photos/id/241/400/400",
      "https://picsum.photos/id/242/400/400",
      "https://picsum.photos/id/243/400/400",
      "https://picsum.photos/id/244/400/400",
      "https://picsum.photos/id/245/400/400",
      "https://picsum.photos/id/246/400/400",
      "https://picsum.photos/id/237/400/400",
      "https://picsum.photos/id/238/400/400",
      "https://picsum.photos/id/239/400/400",
      "https://picsum.photos/id/240/400/400",
      "https://picsum.photos/id/241/400/400",
      "https://picsum.photos/id/242/400/400",
      "https://picsum.photos/id/243/400/400",
      "https://picsum.photos/id/244/400/400",
      "https://picsum.photos/id/245/400/400",
      "https://picsum.photos/id/246/400/400",
      "https://picsum.photos/id/237/400/400",
      "https://picsum.photos/id/238/400/400",
      "https://picsum.photos/id/239/400/400",
      "https://picsum.photos/id/240/400/400",
      "https://picsum.photos/id/241/400/400",
      "https://picsum.photos/id/242/400/400",
      "https://picsum.photos/id/243/400/400",
      "https://picsum.photos/id/244/400/400",
      "https://picsum.photos/id/245/400/400",
      "https://picsum.photos/id/246/400/400",
      "https://picsum.photos/id/237/400/400",
      "https://picsum.photos/id/238/400/400",
      "https://picsum.photos/id/239/400/400",
      "https://picsum.photos/id/240/400/400",
      "https://picsum.photos/id/241/400/400",
      "https://picsum.photos/id/242/400/400",
      "https://picsum.photos/id/243/400/400",
      "https://picsum.photos/id/244/400/400",
      "https://picsum.photos/id/245/400/400",
      "https://picsum.photos/id/246/400/400",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),

            Expanded(
              child: MasonryGridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  final isBigTile = index % 5 == 0;

                  return Container(
                    height: isBigTile ? 250 : 120, // big or small
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
