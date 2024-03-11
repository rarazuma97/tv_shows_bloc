part of 'home_screen_bloc.dart';

abstract class HomeScreenEvent{}

class FetchData extends HomeScreenEvent {} 
class FilterData extends HomeScreenEvent {
  final String value;
  FilterData({required this.value});
} 