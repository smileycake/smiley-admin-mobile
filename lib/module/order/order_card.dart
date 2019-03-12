import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new OrderCardState();

}

class OrderCardState extends State<OrderCard> {

  List<Widget> _showDessert() {
    List<Widget> desserts = new List();
    for (int i = 0; i < 3; ++i) {
      desserts.add(_buildDessertItem());
    }
    return desserts;
  }

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

  Widget _buildDessertItem() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('爆浆海盐奶盖'),
                Row(children: <Widget>[
                  Text(
                    '巧克力',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      '12寸',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                      )
                    ),
                  )
                ])
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('￥128'),
                Text(
                  'x1',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),
                ),
              ],
            ),
          )
        ),
      ],
    );
  }

  Widget _buildDessertList() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey)
              ),
            ),
            child: Column(
              children: _showDessert(),
            )
          )
        )
      ],
    );
  }

  Widget _buildAddress() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(CupertinoIcons.location),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('大悦城3楼5号车库'),
                )
              ],
            ),
          )
        )
      ],
    );
  }

  Widget _buildReceiver() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(CupertinoIcons.phone),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('1777777777'),
                ),
              ],
            ),
          )
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text('张先生'),
                )
              ]
            )
          ),
        )
      ],
    );
  }

  Widget _buildRemark() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(CupertinoIcons.tag),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('不要糖'),
                )
              ],
            ),
          )
        )
      ],
    );
  }

  Widget _buildOrderCard() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      margin: const EdgeInsets.only(top: 10.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildDessertList(),
          _buildRemark(),
          _buildReceiver(),
          _buildAddress(),
        ],
      ),
    );
  }

  Widget _buildTime() {
    return Text(
      '17:30',
      textAlign: TextAlign.left,
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
                padding: EdgeInsets.only(bottom: 15.0, left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _buildTime(),
                    _buildOrderCard(),
                  ],
                ),
              ),
              new Positioned(
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