
class Expense {
  final String id;
  final String title;
  final String amount;

  Expense({required this.id, required this.title, required this.amount});

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
        id : json['id'] as String,
        title : json['title'] as String,
        amount : json['amount'] as String
    );
  }
}