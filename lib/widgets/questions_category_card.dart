import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riwayat/models/category.dart';
import 'categoryicon.dart';

class QuestionsCategoryCard extends StatelessWidget {
  Category category;
  Function onCardClick;

  QuestionsCategoryCard({ this.category, this.onCardClick });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: Container(

          margin: EdgeInsets.only(left: 20 , right: 20 , bottom: 20),

          height: 180,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                     'assets/imgs/' + this.category.imgName3 + '.jpg',


                      fit: BoxFit.fill),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(.3),
                              Colors.transparent
                            ]))),
              ),

            ],
          )),
    );
  }
}