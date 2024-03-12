import 'package:flutter/material.dart';

import 'strict_saving_item.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              "Strict Saving",
            style:TextStyle(
                fontSize:16,
                color:Colors.black38
            ),
          ),
          SizedBox(
            height: 370,
            child: GridView.count(
              crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            physics: NeverScrollableScrollPhysics(),
            children: [
              StrictSavingsItem(
                title: 'PiggyBank',
                subtitle: 'Automatic daily, weekly and monthly withdrawal',
                color: Colors.blue,
                textOnButton: 'SETUP',
              ) ,
              StrictSavingsItem(
                  textOnButton: 'LOCK MONEY',
                  title: 'Safe Lock',
                  subtitle: 'Lock funds to avoid tempation',
                  color: Colors.blue.shade200
              ),
              StrictSavingsItem(textOnButton: 'NEW GOALS',
                  title: 'Target Savings',
                  subtitle: 'Smash your savings goal faster',
                  color: Colors.green.shade600
              ),
              StrictSavingsItem(
                  textOnButton: 'ADD MONEY',
                  title: 'House Money',
                  subtitle: 'save for your housing',
                  color: Colors.orange
              )
            ],
            ),
          )
        ],
      ),
    );
  }
}

