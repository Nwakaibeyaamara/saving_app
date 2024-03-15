import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/Home/widgets/saving_details_card.dart';

import '../../Invest/Widgets/invest_details_card.dart';

class UserBalanceCard extends StatefulWidget {
  const UserBalanceCard({super.key});

  @override
  State<UserBalanceCard> createState() => _UserBalanceCardState();
}

class _UserBalanceCardState extends State<UserBalanceCard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
       child:Builder(
         builder: (context) {
           return Column(
            children: [
              SizedBox(
                height: 150,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      DefaultTabController.of(context).index=index;
                    });
                  },
                  children: [
                    Padding(
                      padding:const EdgeInsets.only(right:8.0),
                      child: SavingDetailCard(
                        balance: '\$20000',
                        topRightWidget: ElevatedButton(
                          onPressed:() {},
                          child:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("View savings"),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 8,
                              )
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child : InvestDetailsCard(),
                    ),
                  ],
                ),
              ),
              TabPageSelector(),

            ],
      );
         }
       ),
    );
  }
}
