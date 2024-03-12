import 'package:flutter/material.dart';

import '../../../Features/Home/widgets/account_settings_item.dart';

class AccountSetting2 extends StatelessWidget {
  const AccountSetting2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AccountSettingItem(
            title:"Refer and earn",
            icon:Icon(Icons.card_giftcard),
          ),
          Divider(color: Colors.grey.shade300,),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Withdrawn fund",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingItem(title: "Generate account Statement",
            icon: Icon(Icons.settings),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingItem(title: "My account Settings",
            icon: Icon(Icons.dashboard),

          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingItem(
            title: "Linked debit card",
            icon: Icon(Icons.lock),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingItem(title: "Withdrawal Bank",
            icon: Icon(Icons.info),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingItem(title: "View piggyvest libary",
              icon: Icon(Icons.lock,)
          ),
          Divider (color: Colors.grey.shade300,),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.red,),
            title: Text(
                "Log Out",
              style: TextStyle(
                  fontWeight :FontWeight.bold,
                color: Colors.red.shade700,
              ),
            )
            )
        ],
      ),
    );
  }
}

