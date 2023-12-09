import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';

class VerticalCouponExample extends StatelessWidget {
  const VerticalCouponExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CouponCard(
      height: 300,
      curvePosition: 180,
      curveRadius: 30,
      borderRadius: 10,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink,
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      firstChild: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BLACKPINK TICKET',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '₱45,000',
            style: TextStyle(
              color: Colors.white,
              fontSize: 56,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'OFF',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      secondChild: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 42),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 80),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'REDEEM',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
