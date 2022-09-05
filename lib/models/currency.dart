import 'package:crypto_trading_ui/models/trade.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Currency {
  final String code;
  final String name;
  final Image icon;
  final double currentAmount;
  final double profit;
  final List<double> priceHistory;
  final List<Trade> tradeHistory;

  Currency(
      {required this.code,
      required this.name,
      required this.icon,
      this.currentAmount = 0.0,
      this.profit = 0.0,
      required this.priceHistory,
      this.tradeHistory = const []});

  String get usdAmountString =>
      NumberFormat.simpleCurrency().format(currentAmount * priceHistory.last);

  String _toPercent(double value) =>
      NumberFormat('+#.##%; -#.##%').format(value);

  String get profitString => _toPercent(profit);

  String get currentPriceString =>
      NumberFormat.simpleCurrency().format(priceHistory.last);

  double get priceChange =>
      (priceHistory.last = priceHistory.first) / priceHistory.first;

  String get priceChangeString => _toPercent(priceChange);
}
