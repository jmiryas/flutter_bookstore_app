import 'package:bookstore_app/models/author_model.dart';

class BookModel {
  late final String name;
  late final String author;
  late final int rating;
  late final String description;
  late final String genre;
  late final String image;
  late final String imageAuthor;

  BookModel(
      {required this.name,
      required this.author,
      required this.rating,
      required this.description,
      required this.genre,
      required this.image,
      required this.imageAuthor});
}
