import 'package:e_commerce/Screens/feed_screen.dart';
import 'package:e_commerce/provider/changenotifer.dart';
import 'package:e_commerce/widget/post_widget.dart';
import 'package:e_commerce/widget/story_slide.dart';
import 'package:flutter/material.dart';
import '../widget/appbr.dart';


class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: Text(
          "Reels Screen",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: Text(
          "Shop Screen",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: Text(
          "Profile Screen",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

 
  final List<Widget> _screens = [
    SingleChildScrollView(
      child: Column(
        children: [
          const appbar(),
          const SizedBox(height: 10),
          StoryList(),
          const SizedBox(height: 10),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return instaPost(
                profileImage: post["profileImage"],
                username: post["username"],
                location: post["location"],
                postImages: List<String>.from(post["postImages"]),
                description: post["description"],
                likes: post["likes"],
              );
            },
          ),
        ],
      ),
    ),
    const SearchScreen(),
    const ReelsScreen(),
    const ShopScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: _screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: "Reels",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(posts[0]["profileImage"]),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
