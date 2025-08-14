import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import '../models/expense.dart';

class ExpenseProvider with ChangeNotifier {
  final LocalStorage storage;
  List<Expense> _expenses = [];

  List<Expense> get expenses => _expenses;

  ExpenseProvider(this.storage) {
    _loadExpensesFromStorage();
  }
}