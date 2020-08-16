import 'package:covidtracker_zigzag/api/apiService_covid.dart';
import 'package:covidtracker_zigzag/api/models/covid/covidSummary.dart';
import 'package:covidtracker_zigzag/utils/themeConfig.dart';
import 'package:covidtracker_zigzag/utils/themeSwitcher.dart';
import 'package:covidtracker_zigzag/widgets/caseSummary.dart';
import 'package:covidtracker_zigzag/widgets/categorySelection.dart';
import 'package:covidtracker_zigzag/widgets/expandedCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _darkTheme = false;

  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);
    Future<COVIDSummary> covidSummary = APIServiceCovid.all();

    _darkTheme = (themeSwitcher.currentTheme() == ThemeConfig.darkTheme);

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 48.0),
                          child: Text("AppName",
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 48.0),
                            child: Switch(
                              value: _darkTheme,
                              onChanged: (bool value) {
                                setState(() {
                                  _darkTheme = value;
                                });
                                onThemeChanged(value, themeSwitcher);
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green,
                            )),
                      ],
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: CaseSummary(),
                ),
                CategorySelection(),
                ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: ExpandedCard(
                      leftColumn: [
                        Text("Countries",
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        FutureBuilder<COVIDSummary>(
                            future: covidSummary,
                            builder: (BuildContext context,
                                AsyncSnapshot<COVIDSummary> snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                    NumberFormat.currency(
                                            symbol: "", decimalDigits: 0)
                                        .format(
                                            snapshot.data.affectedCountries),
                                    style: new TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .fontSize));
                              } else if (snapshot.hasError) {
                                return Text("Error on loading data...");
                              } else
                                return SizedBox(
                                  child: LinearProgressIndicator(),
                                  width: 10,
                                  height: 10,
                                );
                            }),
                      ],
                      rightColumn: [
                        Image(
                          image: AssetImage("assets/images/icons/globe.png"),
                          width: 50,
                          height: 50,
                        )
                      ],
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: ExpandedCard(
                      leftColumn: [
                        Text("Active Cases",
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        FutureBuilder<COVIDSummary>(
                            future: covidSummary,
                            builder: (BuildContext context,
                                AsyncSnapshot<COVIDSummary> snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                    NumberFormat.currency(
                                            symbol: "", decimalDigits: 0)
                                        .format(snapshot.data.active),
                                    style: new TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .fontSize));
                              } else if (snapshot.hasError) {
                                return Text("Error on loading data...");
                              } else
                                return SizedBox(
                                  child: LinearProgressIndicator(),
                                  width: 10,
                                  height: 10,
                                );
                            }),
                      ],
                      rightColumn: [
                        Image(
                          image: AssetImage("assets/images/icons/report.png"),
                          width: 50,
                          height: 50,
                        )
                      ],
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: ExpandedCard(
                      leftColumn: [
                        Text("World Population",
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        FutureBuilder<COVIDSummary>(
                            future: covidSummary,
                            builder: (BuildContext context,
                                AsyncSnapshot<COVIDSummary> snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                    NumberFormat.currency(
                                            symbol: "", decimalDigits: 0)
                                        .format(snapshot.data.population),
                                    style: new TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .fontSize));
                              } else if (snapshot.hasError) {
                                return Text("Error on loading data...");
                              } else
                                return SizedBox(
                                  child: LinearProgressIndicator(),
                                  width: 10,
                                  height: 10,
                                );
                            }),
                      ],
                      rightColumn: [
                        Image(
                          image: AssetImage("assets/images/icons/social.png"),
                          width: 50,
                          height: 50,
                        )
                      ],
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: ExpandedCard(
                      leftColumn: [
                        Text("Critical cases",
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        FutureBuilder<COVIDSummary>(
                            future: covidSummary,
                            builder: (BuildContext context,
                                AsyncSnapshot<COVIDSummary> snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                    NumberFormat.currency(
                                            symbol: "", decimalDigits: 0)
                                        .format(snapshot.data.critical),
                                    style: new TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .fontSize));
                              } else if (snapshot.hasError) {
                                return Text("Error on loading data...");
                              } else
                                return SizedBox(
                                  child: LinearProgressIndicator(),
                                  width: 10,
                                  height: 10,
                                );
                            }),
                      ],
                      rightColumn: [
                        Image(
                          image: AssetImage(
                              "assets/images/icons/electrocardiogram.png"),
                          width: 50,
                          height: 50,
                        )
                      ],
                    )),
              ],
            ),
          ]),
        )
      ],
    );
  }

  void onThemeChanged(bool value, ThemeSwitcher themeSwitcher) async {
    (value)
        ? themeSwitcher.setTheme(ThemeConfig.darkTheme)
        : themeSwitcher.setTheme(ThemeConfig.lightTheme);
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', value);
  }
}
