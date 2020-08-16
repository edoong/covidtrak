import 'package:covidtracker_zigzag/api/apiService_covid.dart';
import 'package:covidtracker_zigzag/api/models/covid/countrySummary.dart';
import 'package:covidtracker_zigzag/widgets/expandedCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Row(
                children: [
                  BackButton(),
                  Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Hero(
                          tag: "country",
                          child: Image(
                              image:
                                  AssetImage("assets/images/icons/world.png"),
                              width: 20,
                              height: 20))),
                  Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Cases by Country",
                          style: new TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .fontSize))),
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(top: 10),
                  child: Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: FutureBuilder<List<CountrySummary>>(
                        future: APIServiceCovid.countries(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            print("Error");
//                          print(snapshot.error);
//                          Text("failed to load country list");
                          }
                          return snapshot.hasData
                              ? ListView(
                                  children: _myCCards(snapshot.data, context),
                                )
                              : Center(child: CircularProgressIndicator());
                        }),
                  )))
            ],
          )),
    );
  }
}

List<Widget> _myCCards(List<CountrySummary> countries, BuildContext context) {
  List<Widget> countryCards = List();
  for (int i = 0; i < countries.length; i++) {
    print(countries[i].countryInfo.flag);
    countryCards.add(ExpandedCard(
      leftColumn: [
        Text(countries[i].country),
        Text(countries[i].continent,
            style: new TextStyle(
                fontSize: Theme.of(context).textTheme.caption.fontSize,
                fontStyle: FontStyle.italic)),
        Text(
            "Cases: " +
                NumberFormat.currency(symbol: "", decimalDigits: 0)
                    .format(countries[i].cases),
            style: new TextStyle(
                color: Colors.blueAccent,
                fontSize: Theme.of(context).textTheme.caption.fontSize)),
        Text(
            "Recoveries: " +
                NumberFormat.currency(symbol: "", decimalDigits: 0)
                    .format(countries[i].recovered),
            style: new TextStyle(
                color: Colors.greenAccent,
                fontSize: Theme.of(context).textTheme.caption.fontSize)),
        Text(
            "Deaths: " +
                NumberFormat.currency(symbol: "", decimalDigits: 0)
                    .format(countries[i].deaths),
            style: new TextStyle(
                color: Colors.redAccent,
                fontSize: Theme.of(context).textTheme.caption.fontSize)),
      ],
      rightColumn: [
        Image.network(
          countries[i].countryInfo.flag,
          width: 100,
          height: 100,
        )
      ],
    ));
  }
  return countryCards.toList();
}

List _buildList(int count) {
  List<Widget> listItems = List();

  for (int i = 0; i < count; i++) {
    listItems.add(new Padding(
        padding: new EdgeInsets.all(20.0),
        child: new Text('Item ${i.toString()}',
            style: new TextStyle(fontSize: 25.0))));
  }

  return listItems;
}
