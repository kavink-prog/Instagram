import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryList extends StatelessWidget {
  final List<String> users = [
    "https://randomuser.me/api/portraits/men/32.jpg",
    "https://randomuser.me/api/portraits/women/44.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/14.jpg",
    "https://randomuser.me/api/portraits/women/13.jpg",
    "https://randomuser.me/api/portraits/women/12.jpg",
    "https://randomuser.me/api/portraits/women/11.jpg",
    "https://randomuser.me/api/portraits/women/16.jpg",
    "https://randomuser.me/api/portraits/women/17.jpg",
    "https://randomuser.me/api/portraits/women/19.jpg",
    "https://randomuser.me/api/portraits/women/18.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: users.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StoryPageView(userIndex: index),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(users[index]),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text("User Name ", style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}

class StoryPageView extends StatefulWidget {
  final int userIndex;

  const StoryPageView({Key? key, required this.userIndex}) : super(key: key);

  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final StoryController controller = StoryController();

  final List<List<String>> userStories = [
    [
      // User 0 stories
      "https://picsum.photos/400/700?random=1",
      "https://picsum.photos/400/700?random=2",
    ],
    [
      // User 1 stories
      "https://picsum.photos/400/700?random=3",
      "https://picsum.photos/400/700?random=4",
      "https://picsum.photos/400/700?random=5",
    ],
    [
      // User 2 stories
      "https://picsum.photos/400/700?random=6",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],

    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
    [
      // User 3 stories
      "https://picsum.photos/400/700?random=7",
      "https://picsum.photos/400/700?random=8",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: userStories[widget.userIndex].map((url) {
          return StoryItem.pageImage(
            url: url,
            controller: controller,
            caption: Text("Story"),
          );
        }).toList(),
        controller: controller,
        repeat: false,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
