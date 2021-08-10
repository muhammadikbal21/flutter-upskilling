import 'package:flutter/material.dart';
import 'package:flutter_upskilling/model/book_model.dart';
import 'package:flutter_upskilling/repository/book_repository.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({ Key? key }) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  BookRepository _bookRepository = BookRepository();
  BookModel? book;

  getBook() async {
    final newBook = await _bookRepository.getBookById('4'); // mendapatkan data dengan id yang diinginkan lewat parameter function getBookById
    setState(() {
      book = newBook; // mengupdate value sesuai yang id yang diinginkan
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("sqflite Page")),
        ),
        body: Column(
          children: [
            // Menampilkan Title dari Book sesuai Database
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                book != null ? book!.title : ''
              ),
            ),
            // Menampilkan Publisher dari Book sesuai Database
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                book != null ? book!.publisher : ''
              ),
            ),
            // Button untuk melihat perubahan Title dan Publisher
            Center(
              child: TextButton(
                onPressed: () {
                  getBook();
                }, 
                child: Text('Show Book')
              ),
            )
          ]
        )
       )
    );
  }
}