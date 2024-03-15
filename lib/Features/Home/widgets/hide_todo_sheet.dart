import 'package:flutter/material.dart';

class HideTodoSheet extends StatelessWidget {
  const HideTodoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         Image.asset(
             "assets/images/shied.png",
           height: 40,
           width: 40,
         ),
          SizedBox(height: 24,),
              Text(
                  "Hide TO-DO List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                      fontSize: 24,
                ),
              ),
          SizedBox(height: 16,),
          Text("Temporary hide all to-do list till tomorrow"),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child:  Divider(),
          ),
          ElevatedButton(
            onPressed: () {
    showDialog(
    context: context,
    builder:(context){
    return AlertDialog(
    title: Text("Remind me later"),
    content: Text("Are you sure you want to hide your to-do List till tomorrow"),
    actions: [
    TextButton(
    onPressed: () {
          Navigator.pop(context);
    },
    child: Text("Yes, remove it"),
    ),
    TextButton(
        onPressed: (){
          Navigator.pop(context);
          Navigator.pop(context);
      },
      child: Text("Close"),
    )
    ],
    );

    },
    );
    },
            style: ElevatedButton.styleFrom(
              maximumSize: Size(MediaQuery.of(context).size.width *0.8, 55),
                  shape: RoundedRectangleBorder(),
              side: BorderSide(color: Colors.red.shade700,
                width: 2,

              )
            ),
              child: Text(
                  "Hide to-do List",
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
          )
        ],
      ),
    );
  }
  }
