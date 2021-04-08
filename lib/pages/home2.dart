import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'file:///C:/Users/amjadsharekh/AndroidStudioProjects/riwayat/lib/pages/home_tabs/categorylistpage.dart';
import 'package:riwayat/helpers/appcolors.dart';
import 'package:riwayat/pages/home_tabs/imam_list_page.dart';
import 'package:riwayat/pages/home_tabs/Category_questions__page.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

enum PopOutMenu { HELP, ABOUT, CONTAT, SETTING }

class _Home2State extends State<Home2> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // ميثود انشاء الحالة للتتبع الاندكس لوحده
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // لايقاف الكنتروال عند الانتقال لشاشة اخرى لعدم استهلاك الداكرة
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              titleSpacing: 18,
              //expandedHeight: 100,
              // snap: true,
              //  toolbarHeight: 60,

              elevation: 0,
              title: Text('ارتـقي'),
              centerTitle: false,
              pinned: true,
              floating: true,
              backgroundColor: AppColors.DARK_GREEN,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                // لزر البحث
                _popOutMenu(context),
                // دروب داون الثلات نقاط
              ],
              bottom: TabBar(
                indicatorWeight: 3,
                isScrollable: true,
                controller: _tabController,
                // للتنقل
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

                tabs: [
                  Tab(
                    text: 'تعريف بالأمة',
                  ),
                  Tab(
                    text: 'أصول القراءات',
                  ),
                  Tab(
                    text: 'المتون',
                  ),
                  Tab(
                    text: 'إختبارات',
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            ImamListPage(),
            CategoryListPage(),
            Container(
              color: Colors.red,
            ),
            CategoryQuestionsPage(), //  Popular(),
            // Favourats(),
          ],
        ),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton<PopOutMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.ABOUT,
            child: Text('من نحن'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.CONTAT,
            child: Text('تواصل معنا'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.HELP,
            child: Text('مساعدة'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.SETTING,
            child: Text('الإعدادات'),
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {},
      icon: Icon(Icons.more_vert), // لجعل الايقونة فيرتكال
    );
  }
}
