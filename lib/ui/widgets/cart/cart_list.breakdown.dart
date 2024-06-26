import 'package:dionniebee/global/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CartBreakdown extends StatelessWidget {
  final num subTotal;
  const CartBreakdown({super.key, required this.subTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcPrimary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("TOTAL",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                Text(
                    " ${NumberFormat.simpleCurrency(locale: 'fil_PH').format(subTotal)} ",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
