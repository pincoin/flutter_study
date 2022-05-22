import 'package:flutter/material.dart';

import './book_tile.dart';
import '../models/book.dart';
import '../repositories/book_repository.dart';

class ListScreen extends StatelessWidget {
  final List<Book> books = BookRepository().getBooks();

  ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('도서 목록 앱')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(book: books[index]);
        },
      ),
    );
  }
}
