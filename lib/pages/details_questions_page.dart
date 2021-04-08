import 'package:flutter/material.dart';
import 'package:riwayat/helpers/utils.dart';
import 'package:riwayat/models/category.dart';

class DetailsQuestionsPage extends StatefulWidget {
  Category category;

  DetailsQuestionsPage({this.category});

  @override
  _DetailsQuestionsPageState createState() => _DetailsQuestionsPageState();
}

class _DetailsQuestionsPageState extends State<DetailsQuestionsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height,
              // child: _gridView(context, size),
              child: Expanded(
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.category.questions.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return GestureDetector(
                        onTap: () {
                          //this.onCardClick();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          margin:
                              EdgeInsets.only(bottom: 16, left: 16, right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[








                              Row(                            mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.category.questions[index].question,
                                  ),
                                ],
                              ),
                              Text(
                                widget.category.questions[index].answer1,
                              ),
                              Text(
                                widget.category.questions[index].answer2,
                              ),
                              Text(
                                widget.category.questions[index].answer3,
                              ),
                              Text(
                                widget.category.questions[index].answer4,
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gridView(BuildContext context, size) {}
}
