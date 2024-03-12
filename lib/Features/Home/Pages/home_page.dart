
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mira_saving_app/Features/Home/Pages/Home_view.dart';
import 'package:mira_saving_app/Features/Home/bloc/home_bloc.dart';
import 'package:mira_saving_app/Features/Home/bloc/home_state.dart';
import 'package:mira_saving_app/Features/Saving/Pages/Saving_view.dart';

import '../../Invest/Pages/Invest_view.dart';
import '../../account/pages/account_view.dart';
class HomePage extends StatefulWidget{
@override
State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
var listOfPages = [
HomeView(),
SavingView(),
InvestView(),
AccountView(),
];
var selectedIndex = 0;


@override
Widget build(BuildContext context){
  HomeBloc  homeBloc= context.watch<HomeBloc>();
  HomeState homeState = homeBloc.state;
  var selectedIndex =homeState.tabIndex;

return Scaffold(
body: IndexedStack(
  children: listOfPages,
  index: selectedIndex,
),
bottomNavigationBar: BottomNavigationBar(
currentIndex: selectedIndex,
unselectedItemColor: Colors.black,
selectedItemColor: Colors.blue,
showSelectedLabels: true,
showUnselectedLabels: true,
onTap: (value) {
homeBloc.updateTabIndex(value);
},
items: [
BottomNavigationBarItem(
icon:Icon(Icons.home),
label: "Home"),
BottomNavigationBarItem(
icon:Icon(Icons.savings),
label: "Savings"),
BottomNavigationBarItem(
icon:Icon(Icons.rocket_launch),
label: "Invest"),
BottomNavigationBarItem(
icon:Icon(Icons.account_circle),
label: "account")
],
),
);
}
}

