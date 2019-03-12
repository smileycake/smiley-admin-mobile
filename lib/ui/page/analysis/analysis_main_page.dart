import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smiley_admin_mobile/ui/page/abstract_page.dart';

class AnalysisMainPage extends AbstractPage {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('analysis'),
      ),
    );
  }

  @override
  BottomNavigationBarItem getBottomNavigation() {
    return BottomNavigationBarItem(
      icon: new Icon(Icons.table_chart)
    );
  }
}