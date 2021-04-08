import 'package:flutter/material.dart';
import 'package:riwayat/helpers/utils.dart';
import 'package:riwayat/models/category.dart';
import 'package:riwayat/pages/details_page.dart';
import 'package:riwayat/widgets/categorycard.dart';

// كلاس الكاتوجري الرئيسية
class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       // SizedBox(height: 20,),
        _gridView(context),
      ],
    )));
  }

  Widget _gridView(BuildContext context) {
    return Expanded(
      // تمدد
      child: ListView.builder(
        // قائمة
        itemCount: categories.length,
        itemBuilder: (BuildContext ctx, int index) {
          return CategoryCard(
              category: categories[index],
              onCardClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                              category: this.categories[index], index: index ,
                            )));
              });
        },
      ),
    );
  }
}
