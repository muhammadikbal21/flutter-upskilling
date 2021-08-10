import 'package:flutter/material.dart';
import 'package:flutter_upskilling/model/book_model.dart';
import 'package:flutter_upskilling/view_model/book_view_model.dart';
import 'package:provider/provider.dart';

class BookFormScreen extends StatefulWidget {
  const BookFormScreen({ Key? key }) : super(key: key);

  @override
  _BookFormScreenState createState() => _BookFormScreenState();
}

class _BookFormScreenState extends State<BookFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Book'),),
      body: Container(
        child: ChangeNotifierProvider(
          create: (context) => BookViewModel(),
          builder: (context, child) {
            return Column(
              children: [
                TextButton(
                  onPressed: () {
                    context.read<BookViewModel>().addBook(BookModel(
                      title: 'Paw Paw', 
                      desc: 'Paw Paw adalah anak kucing', 
                      year: 0, 
                      pages: 0, 
                      language: 'Indonesia', 
                      publisher: 'No Name', 
                      price: 0, 
                      stock: 0
                    ));
                  }, 
                  child: Text('Tambah Buku')
                )
              ],
            );
          }
        ),
      ),
    );
  }
}