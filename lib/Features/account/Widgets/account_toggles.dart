import 'package:flutter/material.dart';

class AccountToggles extends StatelessWidget {
  const AccountToggles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300,
      child: Column(
        children: [
          ListTile(
            title: Text("Enable finger print/face ID"),
            trailing: Switch(value: true,
              onChanged: (value){},activeColor: Colors.green.shade600,
            ),
          ),
          ListTile(
            title: Text("Show Dashboard account Balances"),
            trailing: Switch(
              value: true,
              onChanged: (value){},activeColor: Colors.green.shade600,
            ),
          ),
          ListTile(
            title: Text("Interest Enabled on Savings"),
            trailing: Switch(value: true,
              onChanged: (value){},activeColor: Colors.green.shade600,
            ),
          )
        ],
      ),
    );
  }
}

