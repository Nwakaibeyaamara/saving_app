import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/Home/widgets/my_todo_section.dart';
import 'package:mira_saving_app/Features/Home/widgets/top_savings_section.dart';
import 'package:mira_saving_app/Features/Home/widgets/vetted%20_opportunity_section.dart';
import 'package:mira_saving_app/Features/Invest/Widgets/invest_details_card.dart';

import '../widgets/suggestions_section.dart';
import '../widgets/saving_details_card.dart';
import '../widgets/user_balance_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Mira",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text("Do more with your finances",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              color: Colors.blue,
              onPressed: (){},
              icon: Icon(Icons.account_circle,
                size: 40,
              )
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.4),
        children: [
          UserBalanceCard(),

          MyTodoSection(),
          TopSavingsSection(),
          SuggesionsSection(),
          VettedOpportunitiesSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
      ),
    );
  }
}


