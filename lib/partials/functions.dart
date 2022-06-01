import 'package:myapp/models/Income.dart';
import 'package:myapp/models/Expense.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

List<Income> parseIncomes(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Income>((json) => Income.fromJson(json)).toList();
}

Future<List<Income>> fetchIncomes() async {
  final response = await http
      .get(Uri.parse("http://10.0.4.111/apimoney/www?view=getIncomes"));
  if (response.statusCode == 200) {
    var contents = jsonDecode(response.body);
    List<Income> incomesList = [];
    for (var value in contents) {
      incomesList.add(new Income(
          id: value['id'], title: value['title'], amount: value['amount']));
    }
    ;
    return incomesList;
  } else {
    throw Exception('Unable to fetch incomes from the REST API');
  }
}

List<Expense> parseExpenses(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Income>((json) => Income.fromJson(json)).toList();
}

Future<List<Expense>> fetchExpenses() async {
  final response = await http
      .get(Uri.parse("http://10.0.4.111/apimoney/www?view=getExpenses"));
  if (response.statusCode == 200) {
    var contents = jsonDecode(response.body);
    List<Expense> expensesList = [];
    for (var value in contents) {
      expensesList.add(new Expense(
          id: value['id'], title: value['title'], amount: value['amount']));
    }
    ;
    return expensesList;
  } else {
    throw Exception('Unable to fetch incomes from the REST API');
  }
}