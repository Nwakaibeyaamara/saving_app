import 'package:flutter/material.dart';

import '../../../features/account/widgets/account_settings_item.dart';

class AccountSetting1 extends StatelessWidget {
  const AccountSetting1({
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
            title:"Today's rates",
            icon:Icon(Icons.percent),
          ),
          Divider(color: Colors.grey.shade300,),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("My account Settings",
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
            title: "Enable Dark Mode",
            icon: Icon(Icons.dark_mode),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingItem(title: "Self Help",
            icon: Icon(Icons.info),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingItem(title: "Security",
              icon: Icon(Icons.lock,)
          )
        ],
      ),
    );
  }
}

