import 'dart:ui';

import 'package:riwayat/models/img_book.dart';
import 'package:riwayat/models/questions.dart';

class Category {
  String name;
  Color color;
  String imgName1;
  String imgName2;
  String imgName3;
  List<Category> subCategories;
  List<Questions> questions;
  List<ImgBook> imgBook;


  Category(
    {
      this.name,
      this.color,
      this.imgName1,
      this.imgName2,
      this.imgName3,
      this.subCategories = const [],
      this.questions = const [],
      this.imgBook = const [],
    }
  );
}