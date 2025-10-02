import 'package:flutter/material.dart';

void main() => runApp(const Coffee());

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ProductDetailsScreen.id: (context) => ProductDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
    );
  }
}
