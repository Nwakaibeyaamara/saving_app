import 'package:flutter/material.dart';

class QuickSavePage extends StatelessWidget {
  const QuickSavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
              "assets/images/shied.png",
            height: 100,
            width: 100,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 24,),
          Text(
              "Quick Save",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
              "Enter Amount",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,

                ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "5000",
              border: OutlineInputBorder(),
              prefixText:"NGN",
            ),
            keyboardType:TextInputType.numberWithOptions(decimal: true),
          ),
          Container(
            child: Wrap(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("PiggyBank"),
                      Text("NGN0.00")
                    ],
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
              child: Text("Quick Save"),
          )
        ],
      ),
    );
  }
}
