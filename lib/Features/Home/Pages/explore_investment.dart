import 'package:flutter/material.dart';

class ExploreInvestmentsPage extends StatelessWidget {
  const ExploreInvestmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Investment"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/invest_img.png",
                  height: 80,
                  width: 80,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Coperate Debt Not Series",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                      Text("10 return in 9 month "),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("\$5000"),
                                  Text("Per unit")
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("346"),
                                  Text("Investsore"),
                                ],
                              ),
                            ],
                          )
                    ],
                  ),
                ),
                ElevatedButton(onPressed: () {

                },
                    style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 4)
                    ),
                     child: Text("Sold out")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
