import 'package:bookstore_app/models/book_model.dart';

class AuthorModel {
  late final String name;
  late final String image;
  late final List<BookModel> books;

  AuthorModel({
    required this.name,
    required this.image,
    required this.books,
  });
}
