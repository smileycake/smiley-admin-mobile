import 'package:flutter/cupertino.dart';
import 'package:smiley_admin_mobile/module/order/order_card.dart';

class OrderList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new OrderListState();

}

class OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return OrderCard();
      },
    );
  }

}