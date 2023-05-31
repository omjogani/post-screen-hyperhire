import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.title,
    required this.actionIcon,
    required this.onLeadingIconClick,
    required this.onActionIconClick,
    this.leadingIcon = Icons.arrow_back_ios_new_rounded,
  });
  final String title;
  final IconData leadingIcon;
  final IconData actionIcon;
  final Function onLeadingIconClick;
  final Function onActionIconClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () => onLeadingIconClick(),
          child: Icon(
            leadingIcon,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        GestureDetector(
          onTap: () => onActionIconClick(),
          child: Icon(
            actionIcon,
            color: const Color(0xFFAFB9CA),
          ),
        ),
      ],
    );
  }
}
