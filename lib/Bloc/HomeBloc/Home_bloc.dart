import 'package:expensetrackerapp/Bloc/HomeBloc/Home_event.dart';
import 'package:expensetrackerapp/Bloc/HomeBloc/Home_state.dart';
import 'package:expensetrackerapp/services/HiveHelper/HiveHelper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HiveHelper helper;

  HomeBloc(this.helper) : super(HomeInitial()) {
    on<HomeLoadedEvent>((event, emit) {
      final expenses = helper.getAllExpenses();
      // Calculate totals
      double totalIncome = 0.0;
      double totalExpense = 0.0;
      double toalbalance = 0.0;
      for (var expense in expenses) {
        if (expense.ammountType == 'TransactionType.income') {
          toalbalance += double.parse(expense.ammount);
          totalIncome += double.parse(expense.ammount);
        } else if (expense.ammountType == 'TransactionType.expense') {
          toalbalance -= double.parse(expense.ammount);
          totalExpense += double.parse(expense.ammount);
        }
      }
      if (kDebugMode) {
        // ignore: unused_local_variable
        for (var expense in expenses) {
          print('Total Income: ${expense.ammountType}');
        }
        print('Total Expense: $totalExpense');
        print('Total Expense: $totalIncome');
      }
      emit(HomeLoadedState(expenses, toalbalance, totalIncome, totalExpense));
    });
  }
}
