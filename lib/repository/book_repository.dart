import 'package:flutter_upskilling/dao/book_dao.dart';
import 'package:flutter_upskilling/db/db_helper.dart';
import 'package:flutter_upskilling/model/book_model.dart';

class BookRepository {
  final DBHelper _dbHelper = DBHelper.INSTANCE;

  addBook(BookModel book) async {
    _dbHelper.insert(BookDAO.TABLE_NAME, {
      'title': book.title,
      'publisher': book.publisher
    });
  }
}