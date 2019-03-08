import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new OrderCardState();

}

class OrderCardState extends State<OrderCard> {

  Widget _buildClockIcon() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: 20.0,
      height: 20.0,
      child: Center(
        child: new Icon(CupertinoIcons.time, size: 20.0, color: Colors.blue),
      ),
    );
  }

  Widget _buildOrderCard() {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal.shade700,
          border: Border.all(color: Colors.black)
        ),
        margin: const EdgeInsets.only(top: 10.0),
        alignment: Alignment.center,
        child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20.0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '17:30',
                      textAlign: TextAlign.left,
                    ),
                    _buildOrderCard(),
                  ],
                ),
              ),
              new Positioned(
                top: 10.5,
                left: 10.5,
                child: _buildClockIcon(),
              ),
            ],
          )
        ),
      ]
    );
  }

}