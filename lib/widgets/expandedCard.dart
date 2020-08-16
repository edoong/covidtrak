import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedCard extends StatefulWidget {
  final List<Widget> leftColumn;
  final List<Widget> rightColumn;

  const ExpandedCard({Key key, this.leftColumn, this.rightColumn})
      : super(key: key);

  @override
  _ExpandedCardState createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        child: Container(
            child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: widget.leftColumn,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: widget.rightColumn,
                ),
              ),
            ])));
  }
}
