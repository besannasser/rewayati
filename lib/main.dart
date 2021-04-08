import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:riwayat/helpers/appcolors.dart';
import 'package:riwayat/pages/OnBoardingPlugin.dart';
import 'package:riwayat/pages/details_page.dart';
import 'package:riwayat/pages/home.dart';
import 'package:riwayat/pages/home2.dart';
import 'package:riwayat/pages/home_tabs/categorylistpage.dart';
import 'package:riwayat/pages/home_tabs/imam_list_page.dart';
import 'package:riwayat/pages/home_tabs/Category_questions__page.dart';
import 'pages/splashpage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    localizationsDelegates: [
      GlobalCupertinoLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
    ],
    locale: Locale("ar", "AE"),
    // OR Locale('ar', 'AE') OR Other RTL locales,
    theme: ThemeData(fontFamily: 'Raleway', accentColor: AppColors.DARK_GREEN),
    debugShowCheckedModeBanner: false,
    //home: SplashPage(duration: 2, goToPage: OnBoardingPlugin()),
    home: Home2(),
  ));
}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(
              child: Text(
                  "Something went wrong during initalization: ${snapshot.error}"));
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return Center(
              //TODO ADD BOOK VIEW
              child: Text(
                  "Something went wrong during initalization: ${snapshot.error}"));
        }
        // Otherwise, show something whilst waiting for initialization to complete
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
