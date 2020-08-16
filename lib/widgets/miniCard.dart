import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MiniCard extends StatelessWidget {
  final Widget image;
  final Widget title;
  final Icon icon;
  final BoxDecoration decoration;
  final GestureTapCallback cardTap;
  MiniCard(
      {Key key,
      this.title,
      this.image,
      this.icon,
      this.decoration,
      this.cardTap})
      : super(key: key);

//  MiniCard(this.title, [this.icon, this.image]);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Card(
        child: InkWell(
          splashColor: Colors.black.withAlpha(50),
          onTap: cardTap,
          child: Container(
              decoration: decoration,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: image,
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(4.0), child: icon),
                              Padding(
                                  padding: EdgeInsets.all(4.0), child: title)
                            ],
                          )),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
