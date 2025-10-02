import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Card(
            clipBehavior: Clip.none,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 4),
              child: Row(),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 20,
          bottom: 45,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      spreadRadius: 4,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/drinks/Chocolate.png",
                width: 115,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        Positioned(
          top: 80,
          left: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chocolate",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "20 flavors of cups",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          right: 50,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: Icon(
              Icons.arrow_forward_sharp,
              color: Colors.black54,
              size: 17,
            ),
          ),
        ),
      ],
    );
  }
}
