import 'package:crypto_trading_ui/mocks/mock_portfolio.dart';
import 'package:crypto_trading_ui/screens/components/portfolio/portfolio_item.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'My Portfolio',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 160,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) =>
                  PortfolioItem(currency: MockPortfolio.data[index]),
              separatorBuilder: (_, __) => const SizedBox(
                    width: 24,
                  ),
              itemCount: MockPortfolio.data.length),
        )
      ],
    );
  }
}
