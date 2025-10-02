import 'package:coffe_app/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Gap(70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Image.asset("assets/images/icons/cart.png", width: 25),
              ],
            ),
          ),
          ProductCard(),
        ],
      ),
    );
  }
}
