import 'package:flutter/material.dart';

class SavingDetailCard extends StatelessWidget {
  const SavingDetailCard({
    super.key,
    required this.topRightWidget, required this.balance, this.onClick,
  });
final Widget topRightWidget;
final String balance;
final Function ()? onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      behavior: HitTestBehavior.translucent,
      child :Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.0)
        ),
      padding: EdgeInsets.all(16.0),
      height: 160,
      child: Stack(
        children: [
          ElevatedButton.icon(onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Quick save"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 4,
                ),
                backgroundColor: Colors.yellow.shade900,
                foregroundColor: Colors.white,
                disabledBackgroundColor: Colors.yellow.shade800,
              disabledForegroundColor: Colors.black
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
                child:topRightWidget
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My savings"),
                  Text(
                  balance,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  )
                ],
              ) ,
          )
        ],
      ),
      )
    );
  }
}

