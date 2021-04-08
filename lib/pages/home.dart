import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'file:///C:/Users/amjadsharekh/AndroidStudioProjects/riwayat/lib/pages/home_tabs/categorylistpage.dart';
import 'package:riwayat/helpers/appcolors.dart';
import 'package:riwayat/pages/home_tabs/imam_list_page.dart';
import 'package:riwayat/pages/home_tabs/Category_questions__page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
enum PopOutMenu { HELP, ABOUT, CONTAT, SETTING }

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // ميثود انشاء الحالة للتتبع الاندكس لوحده
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
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
      appBar: AppBar(
        title: Text('ارتـقي'),
       // title: Text('ارتـقي'),

        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          // لزر البحث
          _popOutMenu(context),
          // دروب داون الثلات نقاط
        ],
        centerTitle: false,
        elevation: 0,
        //leadingWidth:200 ,



        //  BackButton( onPressed: () {} ,),

        backgroundColor: AppColors.DARK_GREEN,
        //actionsIconTheme: IconThemeData.lerp(5, ,7, 5),
        //title: Center(child: Text('روايات')),
        // centerTitle: false,
        // عشان تظهر بالايفون على اليسار لانها دفلت فيه على المنتصف والاندرويد على اليمين
        // مleading: على اليسار,
        // leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),

        bottom: TabBar(
          indicatorWeight: 3,
          isScrollable: true,
         // automaticIndicatorColorAdjustment: true,
         // indicatorPadding: EdgeInsets.all(5),
          indicatorSize: TabBarIndicatorSize.tab ,
         // labelColor: Colors.red,
          labelStyle: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
         // labelPadding: EdgeInsets.all(),
         // unselectedLabelColor: Colors.red,
          //dragStartBehavior: DragStartBehavior.start,
         // mouseCursor:MouseCursor.uncontrolled ,
          //enableFeedback: true,
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
          controller: _tabController, // للتنقل
          indicatorColor: Colors.white,
        ),
      ),
      //   drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(
          children: [
            ImamListPage(),
            CategoryListPage(),
            Container(color: Colors.red,),
            CategoryQuestionsPage(),            //  Popular(),
            // Favourats(),
          ],
          controller: _tabController,
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
