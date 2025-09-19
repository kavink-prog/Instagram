import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // tells UI to rebuild
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}

final List<Map<String, dynamic>> posts = [
  {
    "profileImage": "https://randomuser.me/api/portraits/men/1.jpg",
    "username": "joshua_l",
    "location": "Tokyo, Japan",
    "postImages": [
      "https://picsum.photos/id/1011/600/400",
      "https://picsum.photos/id/1012/600/400",
      "https://picsum.photos/id/1013/600/400",
    ],
    "description":
        "The game in Japan was amazing and I want to share some photos from the trip.",
    "likes": 44686,
  },
  {
    "profileImage": "https://randomuser.me/api/portraits/men/1.jpg",
    "username": "joshua_l",
    "location": "Tokyo, Japan",
    "postImages": [
      "https://picsum.photos/id/1011/600/400",
      "https://picsum.photos/id/1012/600/400",
      "https://picsum.photos/id/1013/600/400",
    ],
    "description":
        "The game in Japan was amazing and I want to share some photos from the trip.",
    "likes": 44686,
  },
  {
    "profileImage": "https://randomuser.me/api/portraits/men/1.jpg",
    "username": "joshua_l",
    "location": "Tokyo, Japan",
    "postImages": [
      "https://picsum.photos/id/1011/600/400",
      "https://picsum.photos/id/1012/600/400",
      "https://picsum.photos/id/1013/600/400",
    ],
    "description":
        "The game in Japan was amazing and I want to share some photos from the trip.",
    "likes": 44686,
  },
  {
    "profileImage": "https://randomuser.me/api/portraits/men/1.jpg",
    "username": "joshua_l",
    "location": "Tokyo, Japan",
    "postImages": [
      "https://picsum.photos/id/1011/600/400",
      "https://picsum.photos/id/1012/600/400",
      "https://picsum.photos/id/1013/600/400",
    ],
    "description":
        "The game in Japan was amazing and I want to share some photos from the trip.",
    "likes": 44686,
  },
  {
    "profileImage": "https://randomuser.me/api/portraits/men/1.jpg",
    "username": "joshua_l",
    "location": "Tokyo, Japan",
    "postImages": [
      "https://picsum.photos/id/1011/600/400",
      "https://picsum.photos/id/1012/600/400",
      "https://picsum.photos/id/1013/600/400",
    ],
    "description":
        "The game in Japan was amazing and I want to share some photos from the trip.",
    "likes": 44686,
  },
  {
    "profileImage": "https://randomuser.me/api/portraits/men/1.jpg",
    "username": "joshua_l",
    "location": "Tokyo, Japan",
    "postImages": [
      "https://picsum.photos/id/1011/600/400",
      "https://picsum.photos/id/1012/600/400",
      "https://picsum.photos/id/1013/600/400",
    ],
    "description":
        "The game in Japan was amazing and I want to share some photos from the trip.",
    "likes": 44686,
  },
];
