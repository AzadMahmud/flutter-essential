import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Book List',
      debugShowCheckedModeBanner: false,
      home: BookListScreen(),
    );
  }
}

class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Map<String, dynamic>> books = [
    {
      'title': 'Harry Potter and the Philosophers Stone',
      'author': 'J. K. Rowling',
      'genre': 'Fantasy'
    },
    {'title': 'The Alchemist', 'author': 'Paulo Coelho', 'genre': 'Fantasy'},
    {
      'title': 'The Catcher in the Rye',
      'author': 'J. D. Salinger',
      'genre': 'Coming-of-age'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Show search functionality
              
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index]['title']),
            subtitle: Text('Author: ${books[index]['author']}'),
            trailing: Text('${books[index]['genre']} pages'),
          );
        },
      ),
    );
  }
}
