import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riwayat/models/category.dart';
import 'package:riwayat/models/page_modle_2.dart';

class BookView extends StatefulWidget {
  Category category;
  int index=2;

  BookView({this.category , this.index});
  //int indexx;

  //BookView(this.indexx);

  @override
  _BookViewState createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  //List<PageModle2> pages;
  ValueNotifier<int> _pageViewNotifier =
  ValueNotifier(0); // لها خاصية تتابع القمية التي انشاتها ادا اتغيرا او لا
 /* void _addPages() {
    pages = List<PageModle2>();
    pages.add(PageModle2('assets/images/im1_001.png'));
    pages.add(PageModle2('assets/images/im1_002.png'));
    pages.add(PageModle2('assets/images/im1_003.png'));
    pages.add(PageModle2('assets/images/im1_004.png'));
    pages.add(PageModle2('assets/images/im1_005.png'));pages.add(PageModle2('assets/images/im1_005.png'));
  }*/

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);*/
    //_addPages();
    return Scaffold(
      // تحتوي على اكسترا مواصفات
        body: Stack(
          children: <Widget>[
            //  الستاك بوخد تشليدرن مش تشاليد
            // كل تشلدرين على طبقى معينة
            PageView.builder(
              scrollDirection: Axis.vertical,
              //احتواء اكثر من عنصر مع التحريك في نفس الصفحة
              itemBuilder: (context, index) {
                // دالة في البيج فيو تستدعى في كل صفحة
                return Stack(
                  // لكل صفحة
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          //للتزين
                            image: DecorationImage(
                              image: ExactAssetImage( 'assets/images/' + widget.category.imgBook[index].imgBook + '.png'),
                              //  image: ExactAssetImage(pages[widget.indexx].image),

                              // استدعاء حسب رقم الاندكس
                              fit: BoxFit.fill,
                            ) // لتعال مع الصورة كتزيين
                        )),
                  ],
                );
              },
              itemCount: widget.category.imgBook.length, // عدد الصفحات
              onPageChanged: (index) {
                _pageViewNotifier.value = index;
                print(index);

                //   index == widget.indexx;
              },
            ),
          ],
        ));
  }
}
