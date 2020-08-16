import 'package:auto_size_text/auto_size_text.dart';
import 'package:covidtracker_zigzag/pages/countryPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'miniCard.dart';

class CategorySelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MiniCard> myCards = <MiniCard>[
      MiniCard(
          cardTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CountryPage())),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xFFff00cc), const Color(0xFF333399)])),
          title: AutoSizeText("By Country",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.subtitle2.fontSize,
                  color: Colors.white)),
          icon: Icon(
            Icons.place,
            size: Theme.of(context).iconTheme.size,
            color: Colors.white,
          ),
          image: Hero(
              tag: "country",
              child: Image(
                  image: AssetImage("assets/images/icons/world.png"),
                  height: 100,
                  width: 100))),
      MiniCard(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xFF514A9D), const Color(0xFF24C6DC)])),
        title: AutoSizeText("Vaccine",
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.subtitle2.fontSize,
                color: Colors.white)),
        icon: Icon(
          Icons.info,
          size: Theme.of(context).iconTheme.size,
          color: Colors.white,
        ),
        image: Image(
            image: AssetImage("assets/images/icons/vaccine.png"),
            height: 100,
            width: 100),
      ),
      MiniCard(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xFF00d2ff), const Color(0xFF3a7bd5)])),
        title: AutoSizeText("World Data",
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.subtitle2.fontSize,
                color: Colors.white)),
        icon: Icon(
          Icons.info,
          size: Theme.of(context).iconTheme.size,
          color: Colors.white,
        ),
        image: Image(
            image: AssetImage("assets/images/icons/cloud-computing.png"),
            height: 100,
            width: 100),
      )
    ];
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 3),
      child: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ListView(
            scrollDirection: Axis.horizontal,
            children: myCards,
          );
        },
      ),
    );
  }
}
