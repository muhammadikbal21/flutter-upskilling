class BookModel {
  int? id;
  String title;
  String publisher;

  BookModel({this.id, required this.title, required this.publisher});

  // ini cara me-mapping listnya
  BookModel.fromMap(Map<String, dynamic> map) :
  id = map['id'],
  title = map['title'],
  publisher = map['publisher'];
}