import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.name,
    required this.extraText,
    required this.buttonText,
    required this.isVerified,
    required this.height,
    required this.weight,
    required this.imagePath,
    required this.onButtonClick,
  });
  final String name;
  final String extraText;
  final String buttonText;
  final bool isVerified;
  final int height;
  final int weight;
  final String imagePath;
  final Function onButtonClick;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: <Widget>[
                    Text(
                      "$height" "cm",
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF919EB6),
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    Container(
                      height: 2.0,
                      width: 2.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xFF919EB6),
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      "$weight" "kg",
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF919EB6),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: const Color(0xFF01B99F),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            )
          ),
        ),
      ],
    );
  }
}
