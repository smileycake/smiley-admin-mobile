import 'package:flutter/cupertino.dart';
import 'package:smiley_admin_mobile/ui/page/abstract_page.dart';
import 'package:smiley_admin_mobile/ui/page/order/order_main_page.dart';
import 'package:smiley_admin_mobile/ui/page/analysis/analysis_main_page.dart';

class RootNavigationState extends State<RootNavigation> {
  final int currentTab = 0;
  final List<AbstractPage> pages = [
    new OrderMainPage(),
    new AnalysisMainPage()
  ];

  Widget _buildTabBar() {
    return CupertinoTabBar(
      items: pages.map((AbstractPage page) {
        return page.getBottomNavigation();
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: _buildTabBar(),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return pages[index];
          },
        );
      },
    );
  }

}

class RootNavigation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new RootNavigationState();

}