import 'package:intl/intl.dart';

enum TradeDirection {
  buy,
  sell,
}

class Trade {
  final TradeDirection tradeDirection;
  final String date;
  final double amount;

  Trade({
    required this.tradeDirection,
    required this.date,
    required this.amount,
  });

  String get dateFormatted =>
      DateFormat('dd MMMM yyyy').format(DateFormat('yyyy-MM-dd').parse(date));

  String get amountString {
    final amountString = tradeDirection == TradeDirection.buy ? '+' : '-';
    return '$amountString${NumberFormat('#,###.####').format(amount)}';
  }
}
