import 'package:flutter/material.dart';

import './detail_screen.dart';
import '../models/book.dart';

class BookTile extends StatelessWidget {
  final Book book;

  const BookTile({required this.book, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(book),
          ),
        );
      },
    );
  }
}
