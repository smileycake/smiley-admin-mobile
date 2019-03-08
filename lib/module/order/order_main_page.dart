import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smiley_admin_mobile/abstract_page.dart';
import 'package:smiley_admin_mobile/module/order/order_list.dart';

class OrderMainPage extends AbstractPage {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('2019-03-06'),
      ),
      child: Center(
        child: OrderList(),
      ),
    );
  }

  @override
  BottomNavigationBarItem getBottomNavigation() {
    return BottomNavigationBarItem(
      icon: new Icon(Icons.assignment)
    );
  }

}