import 'package:flutter/material.dart';
import 'package:mira_saving_app/Features/Home/widgets/my_todo_item.dart';
import 'hide_todo_sheet.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
        return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Todo",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return HideTodoSheet();
                    },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Hide",
                      style: TextStyle(color: Colors.red.shade700),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.red.shade700,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // ListView Start
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTodoItem(
                  title: "Add Debit Card",
                  progress: 0.3,
                ),
                MyTodoItem(
                  title: "Enable Autosave",
                  progress: 0.9,
                  onPressed: () {

                  },
                ),
                MyTodoItem(
                  title: "Enable face id/fingerprint",
                  progress: 0,
                  onPressed: () {

                  },
                ),
                MyTodoItem(
                  title: "Add a Picture",
                  progress: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}