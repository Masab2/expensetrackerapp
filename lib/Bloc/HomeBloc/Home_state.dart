import 'package:equatable/equatable.dart';
import 'package:expensetrackerapp/Models/expenseModel.dart';

abstract class HomeState extends Equatable {
  @override
  // implement props
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<ExpenseModel> expenseList;
  final totalbalance;
  final totalIncome;
  final totalExpense;

  HomeLoadedState(
      this.expenseList, this.totalbalance, this.totalIncome, this.totalExpense);
  @override
  List<Object?> get props =>
      [expenseList, totalbalance, totalIncome, totalExpense];
}
