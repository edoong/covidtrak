import 'package:covidtracker_zigzag/api/apiService_covid.dart';
import 'package:covidtracker_zigzag/api/models/covid/covidSummary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CaseSummary extends StatefulWidget {
  @override
  _CaseSummaryState createState() => _CaseSummaryState();
}

class _CaseSummaryState extends State<CaseSummary> {
  @override
  Widget build(BuildContext context) {
    Future<COVIDSummary> covidSummary = APIServiceCovid.all();
    return Card(
        elevation: 5.0,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xFF4776E6), const Color(0xFF8E54E9)])),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: FutureBuilder<COVIDSummary>(
                future: covidSummary,
                builder: (BuildContext context,
                    AsyncSnapshot<COVIDSummary> snapshot) {
                  List<Widget> widgetList;
                  if (snapshot.hasData) {
                    widgetList = <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Text("Total Cases",
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .fontSize)),
                                Text(
                                    NumberFormat.currency(
                                            symbol: "", decimalDigits: 0)
                                        .format(snapshot.data.cases),
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .fontSize)),
                                Text("As of today",
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ))
                              ],
                            ))
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("Recovered",
                                    style: new TextStyle(
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                    NumberFormat.currency(
                                            symbol: "", decimalDigits: 0)
                                        .format(snapshot.data.todayRecovered),
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .fontSize)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("Deaths",
                                    style: new TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                    NumberFormat.currency(
                                            symbol: "", decimalDigits: 0)
                                        .format(snapshot.data.todayDeaths),
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .fontSize)),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Text("Cases today",
                                  style: new TextStyle(
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.w400)),
                              Text(
                                  NumberFormat.currency(
                                          symbol: "", decimalDigits: 0)
                                      .format(snapshot.data.todayCases),
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .fontSize)),
                            ],
                          ))
                        ],
                      )
                    ];
                  } else if (snapshot.hasError) {
                    widgetList = <Widget>[
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Error: ${snapshot.error}'),
                      )
                    ];
                  } else {
                    widgetList = <Widget>[
                      SizedBox(
                        child: CircularProgressIndicator(),
                        width: 20,
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Awaiting result...'),
                      )
                    ];
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: widgetList,
                  );
                }),
          ),
        ));
  }
}
