import 'package:flutter/material.dart';
import 'package:flutter_upskilling/model/book_model.dart';
import 'package:flutter_upskilling/repository/book_repository.dart';

class BookViewModel with ChangeNotifier { // ChangeNotifier lebih prefer menggunakan with daripada extends, tapi tergantung project yang digunakan itu menggunakan extends kah atau with kah
  BookModel? _book;

  BookModel? get book {
    return _book;
  }

  BookRepository _bookRepository = BookRepository();

  getBookById() async {
    final newBook = await _bookRepository.getBookById('6');
    _book = newBook; // mengupdate valuenya
    notifyListeners(); // meng-listen perubahan valuenya
  }
}