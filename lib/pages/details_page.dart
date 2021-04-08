import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riwayat/helpers/appcolors.dart';
import 'package:riwayat/helpers/utils.dart';
import 'package:riwayat/models/category.dart';
import 'package:riwayat/pages/book_view.dart';
import 'package:riwayat/widgets/themebutton.dart';

class DetailsPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  Category category;

  DetailsPage({this.category});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.DARK_GREEN,
       // brightness: Brightness.light,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: size.height * .02,
                  left: size.width * .0,
                  right: size.width * .05),
              height: size.height * .28,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/imgs/backGBook.jpg'),fit: BoxFit.cover),
             //   color: Colors.white,
                //  borderRadius: BorderRadius.circular(38.5),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(38.5),
                    bottomRight: Radius.circular(38.5)),

                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 38.5,
                    //      spreadRadius: 50,
                    color: Color(0xFFD3D3D3).withOpacity(.84),
                  ),
                ],
              ),
              child: Container(
                child: Flex(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.transparent,
                          child: Image.asset(
                            'assets/imgs/' + this.category.imgName2 + '.png',
                            height: double.infinity,
                            alignment: Alignment.topRight,
                            fit: BoxFit.fitWidth,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Transform.translate(
                          offset: Offset(40, 0),
                          child: Align(
                              // محاداة
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Transform.translate(
                                    offset: Offset(0, 20),
                                    child: Container(
                                      child: Text(
                                        this.category.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            .copyWith(fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(0, -30),
                                    child: Align(
                                      // محاداة
                                      // alignment: Alignment.bottomCenter, // محاداة من اسفل في المنتصف
                                      child: SizedBox(
                                        width: double.infinity,
                                        // لملء الزر على كامل الشاشة

                                        child: ThemeButton(
                                            onClick: () {
                                             Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => BookView(0)));
                                            },
                                            color: this.category.color,
                                            label: 'ابدأ التعلم'),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(0, 0),
                                    child: Align(
                                      // محاداة
                                      // alignment: Alignment.bottomCenter, // محاداة من اسفل في المنتصف
                                      child: SizedBox(
                                        width: double.infinity,
                                        // لملء الزر على كامل الشاشة

                                        child: ThemeButton(
                                            onClick: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => BookView(0)));
                                            },
                                            color: this.category.color,
                                            label: 'التحميل'),
                                      ),
                                    ),
                                  ),

                                ],
                              )),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: size.height * .60,
              child: _gridView(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gridView(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: category.subCategories.length,
        itemBuilder: (BuildContext ctx, int index) {
          return GestureDetector(
              onTap: () {
                //this.onCardClick();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
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
                child: InkWell(
                  onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BookView(4)));
                  //  showDialogFun(context, imam.imgName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: category.subCategories[index].name,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Spacer(),

                      Image(
                        width: size.width * .05,
                        color: this.category.color,
                        image: ExactAssetImage(
                          "assets/icons/bab.png",
                        ),
                        //   size: 150,

                        //  onPressed: press,
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
