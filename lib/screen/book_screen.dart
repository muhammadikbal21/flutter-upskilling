import 'package:flutter/material.dart';
import 'package:flutter_upskilling/model/book_model.dart';
import 'package:flutter_upskilling/repository/book_repository.dart';
import 'package:flutter_upskilling/view_model/book_view_model.dart';
import 'package:provider/provider.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({ Key? key }) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("sqflite Page")),
        ),
        body: Column(
          children: [
            ChangeNotifierProvider(
              create: (context) => BookViewModel(),
              builder: (context, child) {
                return Column(
                  children: [
                    // Menampilkan Title dari Book sesuai Database
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        context.watch<BookViewModel>().book?.title??'' // cara simple ternary operator
                      ),
                    ),
                    // Menampilkan Publisher dari Book sesuai Database
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        context.watch<BookViewModel>().book?.publisher??''
                      ),
                    ),
                    // Button untuk melihat perubahan Title dan Publisher
                    Center(
                      child: TextButton(
                        onPressed: () {
                          context.read<BookViewModel>().getBookById();
                        }, 
                        child: Text('Show Book')
                      ),
                    )
                  ],
                );
              },
            ),
          ]
        )
       )
    );
  }
}