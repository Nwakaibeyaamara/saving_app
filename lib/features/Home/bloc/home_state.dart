import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  HomeState({
    this.hideTodo = false,
  this.tabIndex=0,
  });
  final int tabIndex;
  final bool hideTodo;
  @override
  // TODO: implement props
  List<Object?> get props => [
    tabIndex,
    hideTodo,
  ];

}