import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mira_saving_app/Features/Home/bloc/home_state.dart';

class HomeBloc extends Cubit<HomeState>{
  HomeBloc(): super(HomeState());
  void updateTabIndex(int newIndex)async{
    emit(HomeState(tabIndex: newIndex));
  }
}

