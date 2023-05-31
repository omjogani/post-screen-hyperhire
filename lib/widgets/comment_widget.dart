import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
    required this.name,
    required this.extraText,
    required this.imagePath,
    required this.isVerified,
    required this.inMorePressed,
    required this.comments,
    required this.likes,
    required this.totalComments,
  });
  final List<String> name;
  final List<String> extraText;
  final List<String> imagePath;
  final List<bool> isVerified;
  final List<int> likes;
  final List<int> totalComments;
  final Function inMorePressed;
  final List<String> comments;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleComment(
          comment: comments[0],
          extraText: extraText[0],
          imagePath: imagePath[0],
          inMorePressed: inMorePressed,
          isVerified: isVerified[0],
          name: name[0],
          likes: likes[0],
          comments: totalComments[0],
        ),
        const SizedBox(height: 4.0),
        Padding(
          padding: const EdgeInsets.only(left: 42.0),
          child: SingleComment(
            comment: comments[1],
            extraText: extraText[1],
            imagePath: imagePath[1],
            inMorePressed: inMorePressed,
            isVerified: isVerified[1],
            name: name[1],
            likes: likes[1],
            comments: totalComments[1],
          ),
        ),
      ],
    );
  }
}

class SingleComment extends StatelessWidget {
  const SingleComment({
    super.key,
    required this.name,
    required this.extraText,
    required this.imagePath,
    required this.isVerified,
    required this.inMorePressed,
    required this.comment,
    this.likes = 0,
    this.comments = 0,
    this.onLikePressed,
    this.onCommentPressed,
  });
  final String name;
  final String extraText;
  final String imagePath;
  final bool isVerified;
  final Function inMorePressed;
  final String comment;
  final int likes;
  final int comments;
  final Function? onLikePressed;
  final Function? onCommentPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xFFFFDCA9),
                    child: Image.asset(imagePath),
                  ),
                ),
                const SizedBox(width: 5.3),
                Row(
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    isVerified
                        ? const Icon(
                            Icons.check_circle,
                            size: 14.0,
                            color: Color(0xFF01B99F),
                          )
                        : const SizedBox.shrink(),
                    const SizedBox(width: 4.0),
                    Text(
                      extraText,
                      style: const TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF919EB6),
                      ),
                    ),
                  ],
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz_rounded,
                color: Color(0xFFAFB9CA),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 42.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                comment,
              ),
              const SizedBox(height: 9.21),
              Row(
                children: <Widget>[
                  likes == 0
                      ? const SizedBox.shrink()
                      : GestureDetector(
                          onTap: () => onLikePressed ?? () {},
                          child: const Icon(
                            Icons.favorite_border_rounded,
                            color: Color(0xFFAFB9CA),
                          ),
                        ),
                  const SizedBox(width: 6.0),
                  likes == 0
                      ? const SizedBox.shrink()
                      : Text(
                          "$likes",
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFAFB9CA),
                          ),
                        ),
                  const SizedBox(width: 14.0),
                  comments == 0
                      ? const SizedBox.shrink()
                      : GestureDetector(
                          onTap: () => onCommentPressed ?? () {},
                          child: const Icon(
                            Icons.comment_outlined,
                            color: Color(0xFFAFB9CA),
                          ),
                        ),
                  const SizedBox(width: 6.0),
                  comments == 0
                      ? const SizedBox.shrink()
                      : Text(
                          "$comments",
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFAFB9CA),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
