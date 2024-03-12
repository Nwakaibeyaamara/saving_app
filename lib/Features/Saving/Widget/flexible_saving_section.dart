import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/Saving/Widget/strict_saving_item.dart';

class FlexibleSavingsSection extends StatelessWidget {
  const FlexibleSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: EdgeInsets.symmetric(vertical: 16),
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text (
              'Flexible saving',
      style:TextStyle(
          fontSize:16,
          color:Colors.black38,
      ),
          ),
          SizedBox(
            height: 150,
            child: GridView.count(
              crossAxisSpacing: 2,
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
                crossAxisCount:2,
                children: [
                  StrictSavingsItem(
                    textOnButton:'\$100',
                      title: 'Flex Dollar',
                      subtitle: 'Save in dollars,earn interest',
                      color: Colors.black87,
                  ),
                  StrictSavingsItem(textOnButton: 'NGN 40000',
                      title: 'Flex Naira',
                      subtitle: 'Your emergency funds with interest',
                      color: Colors.pinkAccent,
                  )

                ],
            ),
          )
        ],

      ),
    );
  }
}
