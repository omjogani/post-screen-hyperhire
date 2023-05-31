import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.title,
    required this.imagePath,
    this.description = "",
    this.tags = const <String>[],
    this.onLikePressed,
    this.likes = 0,
    this.comments = 0,
    this.onCommentPressed,
    this.onBookmarkPressed,
    this.onMorePressed,
  });
  final String title;
  final String description;
  final List<String> tags;
  final String imagePath;
  final int likes;
  final int comments;
  final Function? onLikePressed;
  final Function? onCommentPressed;
  final Function? onBookmarkPressed;
  final Function? onMorePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          description,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16.0),
        Wrap(
          spacing: 8.0,
          children: tags.map((item) {
            return Chip(
              backgroundColor: const Color(0xFFF7F8FA),
              side: const BorderSide(color: Color(0xFFCED3DE), width: 0.5),
              label: Text(item),
            );
          }).toList(),
        ),
        const SizedBox(height: 16.0),
        AspectRatio(
          aspectRatio: 0.83 / 1,
          child: Container(
            color: const Color(0xFFEDEEF3),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 56.0,
          child: Row(
            children: <Widget>[
              const SizedBox(width: 6.0),
              GestureDetector(
                onTap: () => onLikePressed ?? () {},
                child: const Icon(
                  Icons.favorite_border_rounded,
                  color: Color(0xFFAFB9CA),
                ),
              ),
              const SizedBox(width: 6.0),
              Text(
                "$likes",
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFAFB9CA),
                ),
              ),
              const SizedBox(width: 14.0),
              GestureDetector(
                onTap: () => onCommentPressed ?? () {},
                child: const Icon(
                  Icons.comment_outlined,
                  color: Color(0xFFAFB9CA),
                ),
              ),
              const SizedBox(width: 6.0),
              Text(
                "$comments",
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFAFB9CA),
                ),
              ),
              const SizedBox(width: 14.0),
              GestureDetector(
                onTap: () => onBookmarkPressed ?? () {},
                child: const Icon(
                  Icons.bookmark_outline_rounded,
                  color: Color(0xFFAFB9CA),
                ),
              ),
              const SizedBox(width: 14.0),
              GestureDetector(
                onTap: () => onMorePressed ?? (){},
                child: const Icon(
                  Icons.more_horiz_rounded,
                  color: Color(0xFFAFB9CA),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
