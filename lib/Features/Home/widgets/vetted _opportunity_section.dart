import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/Home/Pages/explore_investment.dart';

class VettedOpportunitiesSection extends StatelessWidget {
  const VettedOpportunitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                    "Vetted Opportunities",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38
                    ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context){
                            return ExploreInvestmentsPage();
                      })
                      );
                    } ,
                    child:Row(
                      children: [
                        Text("Find more"),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,)
                      ],
                    ),
                  )
              ],
            ),
            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 VOitem(),
                  VOitem(),
                  VOitem(),
                  VOitem(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VOitem extends StatelessWidget {
  const VOitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
              "assets/images/invest_img.png",
            width: 152,
          ),
          SizedBox(width: 8,),
          Text(
              "Coperate Debt",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
          Text("10% return in 9 months")
        ],
      ),
    );
  }
}
