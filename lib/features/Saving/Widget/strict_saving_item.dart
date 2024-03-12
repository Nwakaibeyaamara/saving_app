import 'package:flutter/material.dart';

class StrictSavingsItem extends StatelessWidget {
  const StrictSavingsItem({
    super.key,
    required this.textOnButton,
    required this.title, required this.subtitle,
    required this.color,
  });
  final String textOnButton;
  final String title;
  final String subtitle;
  final Color  color;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8)
        ),
        padding:EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed:(){} ,
                    child: Text(textOnButton),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 4)
                  ),
                ),
              ],
            ),
            Text(
              title,
              style:TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.bold,
                  color:color
              ),
            ),
            Text(
              subtitle,
              style:TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
    );
  }
}
