import 'package:covidtracker_zigzag/pages/homePage.dart';
import 'package:covidtracker_zigzag/utils/themeConfig.dart';
import 'package:covidtracker_zigzag/utils/themeSwitcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]).then((_) {
    SharedPreferences.getInstance().then((prefs) {
      var darkModeOn = prefs.getBool('darkMode') ?? true;
      runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => ThemeSwitcher(
                  darkModeOn ? ThemeConfig.darkTheme : ThemeConfig.lightTheme)),
        ],
        child: MyApp(),
      ));
    });
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);
    return MaterialApp(
      title: "MaterialApp",
      theme: themeSwitcher.currentTheme(),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: HomePage(),
        ),
      ),
    );
  }
}
