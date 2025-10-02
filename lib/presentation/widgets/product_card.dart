import 'package:coffe_app/data/product_getter.dart';
import 'package:coffe_app/presentation/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final List<Product> productData = getProductData();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: productData.length,
        itemBuilder: (context, index) {
          final product = productData[index];
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 35,
                  horizontal: 15,
                ),
                child: Card(
                  clipBehavior: Clip.none,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 75,
                      horizontal: 4,
                    ),
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
                    Image.asset(product.image, width: 115, fit: BoxFit.contain),
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
                          product.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          product.subTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
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
        },
      ),
    );
  }
}
