import 'package:flutter/material.dart';
import 'package:riwayat/helpers/utils.dart';
import 'package:riwayat/models/category.dart';
import 'package:riwayat/pages/details_page.dart';
import 'file:///C:/Users/amjadsharekh/AndroidStudioProjects/riwayat/lib/pages/details_questions_page.dart';
import 'package:riwayat/widgets/categorycard.dart';
import 'package:riwayat/widgets/questions_category_card.dart';

// كلاس الكاتوجري الرئيسية
class CategoryQuestionsPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
             //   SizedBox(height: 20,),
                _gridView(context),
              ],
            )));
  }

  Widget _gridView(BuildContext context) {
    return           Expanded(
      // تمدد
      child: ListView.builder(
        // قائمة
        itemCount: categories.length,
        itemBuilder: (BuildContext ctx, int index) {
          return QuestionsCategoryCard(
              category: categories[index],
              onCardClick: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsQuestionsPage(
                         category: this.categories[index],
                        )));
              });
        },
      ),
    );
  }
}
