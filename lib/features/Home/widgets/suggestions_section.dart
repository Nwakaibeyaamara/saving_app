import 'package:flutter/material.dart';

class SuggesionsSection extends StatelessWidget {
  const SuggesionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suggestion for you",
            style:TextStyle(
                fontSize:16,
                color:Colors.black38
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset("assets/images/save_for_rent.png"),
                  SizedBox(width: 8,),
                  Image.asset("assets/images/save_for_business.png"),
                  SizedBox(width: 8,),
                  Image.asset("assets/images/save_for_vacation.png"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

