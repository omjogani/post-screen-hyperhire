import 'package:flutter/material.dart';

class AddCommentWidget extends StatelessWidget {
  const AddCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String comment = "";

    return Row(
      children: [
        Expanded(
          child: TextFormField(
            textAlign: TextAlign.left,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.image_outlined,
                color: Color(0xFF919EB6),
              ),
              border: InputBorder.none,
              hintText: 'Search',
            ),
          ),
        ),
        const Text(
          "등록",
          style: TextStyle(
            color: Color(0xFF919EB6),
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
