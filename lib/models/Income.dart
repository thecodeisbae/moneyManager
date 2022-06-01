
class Income {
  final String id;
  final String title;
  final String amount;

  Income({required this.id, required this.title, required this.amount});

  factory Income.fromJson(Map<String, dynamic> json) {
    return Income(
        id : json['id'] as String,
        title : json['title'] as String,
        amount : json['amount'] as String
    );
  }
}