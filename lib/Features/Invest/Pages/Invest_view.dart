import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/Home/widgets/vetted%20_opportunity_section.dart';
import 'package:mira_saving_app/Features/Invest/Widgets/invest_details_card.dart';

import '../Widgets/tab_section.dart';

class InvestView extends StatelessWidget {
  const InvestView({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Invesment"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {

          },
              icon: Icon(Icons.info_outline_rounded),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          InvestDetailsCard(),
          Divider(),
          VettedOpportunitiesSection(),
          TabSection(),
        ],
      ),
    );
  }
}
