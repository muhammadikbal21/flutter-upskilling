import 'package:flutter_upskilling/model/book_model.dart';

class ResponseBook {
  final int code;
  final String description;
  final List<BookModel> data;

  ResponseBook({
    required this.code,
    required this.description,
    required this.data,
  });

  Map<String, dynamic> toMap() => {
    'code': code,
    'description': description,
    'data': data
  };

  factory ResponseBook.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['Data'] as List;
    List<BookModel> listData = list.map((i) => BookModel.fromJson(i)).toList();

    return ResponseBook(
      code: parsedJson['Code'], 
      description: parsedJson['Description'], 
      data: listData
    );
  }
}