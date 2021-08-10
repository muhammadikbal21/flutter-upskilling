import 'package:flutter_upskilling/api/api_helper.dart';
import 'package:flutter_upskilling/dao/book_dao.dart';
import 'package:flutter_upskilling/db/db_helper.dart';
import 'package:flutter_upskilling/model/book_model.dart';

class BookRepository {
  final DBHelper _dbHelper = DBHelper.INSTANCE;
  final ApiHelper _apiHelper = ApiHelper.INSTANCE;

  addBook(BookModel book) async {
    final response = await _apiHelper.postData('/book', book.toMap());
    return BookModel.fromMap(response);
  }

  Future<BookModel?> getBookById(String id) async {
    final List<dynamic> result = await _dbHelper.query(BookDAO.TABLE_NAME, 'id = ?', [id]);

    if (result != null) {
      return BookModel.fromMap(result.first); // result.first untuk mendapatkan elemen pertama dari list yang sesuai dengan query
    } else {
      return null;
    }
  }
}