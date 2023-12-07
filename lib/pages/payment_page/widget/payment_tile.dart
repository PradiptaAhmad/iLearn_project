import 'package:flutter/material.dart';

class PaymentTile extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isExpanded;
  PaymentTile(
      {Key? key,
      required this.title,
      required this.child,
      required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ]),
          child: Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              hintColor: Colors.transparent,
              unselectedWidgetColor: Colors.transparent,
            ),
            child: ExpansionTile(
              title: Text(title),
              children: [child],
              initiallyExpanded: isExpanded,
            ),
          )),
    );
  }
}
