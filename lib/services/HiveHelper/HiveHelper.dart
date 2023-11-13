import 'package:expensetrackerapp/Models/expenseModel.dart';
import 'package:expensetrackerapp/services/Boxes/boxes.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class HiveHelper {
  late Box<ExpenseModel> _expenseBox;
  // Constructor to initialize the Hive box
  HiveHelper() {
    _initHive();
  }

  // Initialize the Hive box
  void _initHive() async {
    _expenseBox = await Boxes.getData();
  }

  Future<void> addAmmount(var ammount, ammountType, descrip, date) async {
    try {
      final data = ExpenseModel(
          ammount: ammount,
          ammountType: ammountType,
          descrip: descrip,
          date: date);
      if (kDebugMode) {
        print(data.ammount.toString());
      }
      final box = Boxes.getData();
      box.add(data);
      data.save();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  // get data from the Hive database
  List<ExpenseModel> getAllExpenses() {
    return _expenseBox.values.toList();
  }
}
