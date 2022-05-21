import 'package:flutter/material.dart';
import './detail_screen.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  const BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title,
              subtitle,
              description,
              image,
            ),
          ),
        );
      },
    );
  }
}
