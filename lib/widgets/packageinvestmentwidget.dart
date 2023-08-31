import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomWidgetInvestmentContainer extends StatelessWidget {
  final String InvesmentTitle;
  final VoidCallback onEnquirenowButtonPressed;

  final double InvestmentValue;

  CustomWidgetInvestmentContainer({
    required this.InvesmentTitle,
    required this.onEnquirenowButtonPressed,
    required this.InvestmentValue,
  });

  @override
  Widget build(BuildContext context) {
    NumberFormat valueFormatter = NumberFormat.currency(
      locale: 'en_IN',
      symbol: '\u{20B9}',
    );

// Modify the formatter to display the leading 0,000
    String formattedInvestmentValue =
        valueFormatter.format(InvestmentValue).replaceAll('.00', '');
    if (InvestmentValue == 0) {
      formattedInvestmentValue = '0,000';
    }

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 215, 214, 214),
                blurRadius: 5.0,
                spreadRadius: 2.0,
                offset: Offset(0, 2.0), // Set Y to create a downward shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      InvesmentTitle,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      formattedInvestmentValue,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: onEnquirenowButtonPressed,
                child: Container(
                  height: 70,
                  color: Color.fromARGB(255, 166, 206, 57),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                      child: Text(
                        "ENQUIRE NOW",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
