
import 'package:flutter/material.dart';

Widget instaPost({
  required String profileImage,
  required String username,
  required String location,
  required List<String> postImages,
  required String description,
  required int likes,
}) {
  return _InstaPostWidget(
    profileImage: profileImage,
    username: username,
    location: location,
    postImages: postImages,
    description: description,
    likes: likes,
  );
}

class _InstaPostWidget extends StatefulWidget {
  final String profileImage;
  final String username;
  final String location;
  final List<String> postImages;
  final String description;
  final int likes;

  const _InstaPostWidget({
    required this.profileImage,
    required this.username,
    required this.location,
    required this.postImages,
    required this.description,
    required this.likes,
  });

  @override
  State<_InstaPostWidget> createState() => _InstaPostWidgetState();
}

class _InstaPostWidgetState extends State<_InstaPostWidget> {
  bool isLiked = false;
  bool showFullText = false;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.profileImage),
          ),
          title: Text(
            widget.username,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(widget.location),
          trailing: const Icon(Icons.more_horiz),
        ),

        SizedBox(
          height: 400,
          child: PageView.builder(
            itemCount: widget.postImages.length,
            onPageChanged: (index) {
              setState(() => currentPage = index);
            },
            itemBuilder: (context, index) {
              return Image.network(widget.postImages[index], fit: BoxFit.cover);
            },
          ),
        ),

        if (widget.postImages.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.postImages.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                width: currentPage == index ? 8 : 6,
                height: currentPage == index ? 8 : 6,
                decoration: BoxDecoration(
                  color: currentPage == index ? Colors.blue : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),

        Row(
          children: [
            IconButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.white,
              ),
              onPressed: () => setState(() => isLiked = !isLiked),
            ),
            IconButton(
              icon: const Icon(Icons.comment_outlined),
              onPressed: () {},
            ),
            IconButton(icon: const Icon(Icons.send_outlined), onPressed: () {}),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "Liked by ${widget.likes} others",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: "${widget.username} ",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: showFullText
                      ? widget.description
                      : widget.description.length > 50
                      ? widget.description.substring(0, 50) + "... more"
                      : widget.description,
                ),
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: () => setState(() => showFullText = !showFullText),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            child: Text(
              showFullText ? "Show less" : "Show more",
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}
