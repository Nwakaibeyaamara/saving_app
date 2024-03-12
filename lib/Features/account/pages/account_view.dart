import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/account/Widgets/account_toggles.dart';
import 'package:mira_saving_app/Features/account/Widgets/account_setting_2.dart';

import '../Widgets/account_setting_1.dart';
import '../Widgets/account_toggles.dart';
class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Text(
          "My account",
        style: TextStyle(
        fontWeight: FontWeight.bold
    ),
    ),
    Text("Mira",
    style: TextStyle(
    fontSize: 16,
      color: Colors.grey.shade600
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
        padding: EdgeInsets.only(bottom: 16),
        children: [
          AccountToggles(),
          AccountView(),
          AccountSetting1(),
          SizedBox(height: 16,),
          AccountSetting2(),
            ],
      ),
    );
  }
}

