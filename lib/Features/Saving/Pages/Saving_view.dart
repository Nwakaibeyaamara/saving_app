import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/Saving/Pages/quick_save_page.dart';
import 'package:mira_saving_app/features/Saving/Widget/strict_saving_section.dart';
import 'package:mira_saving_app/Features/Home/widgets/saving_details_card.dart';
import 'package:mira_saving_app/Features/Saving/Widget/flexible_saving_section.dart';

class  SavingView extends StatelessWidget {
  const SavingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My saving"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_outline_rounded)
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SavingDetailCard(
            balance: "\$24000",
            topRightWidget: Chip(
              label: Text(
                  "up to 12% return",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
              shape: StadiumBorder(),
            ),
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return QuickSavePage();
              }),
              );
            },
    ),
          StrictSavingsSection(),
          FlexibleSavingsSection(),
        ],
      ),
    );
  }
}
