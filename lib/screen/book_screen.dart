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

  @override
  Widget build(BuildContext context) {
    _bookRepository.addBook(BookModel(title: 'Harry Potter', publisher: 'J.K.Rowling'));
    return SafeArea(
       child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("sqflite Page")),
        ),
        body: Column(
          children: [

          ]
        )
       )
    );
  }
}