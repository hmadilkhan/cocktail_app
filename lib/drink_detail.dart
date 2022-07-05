import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;
  const DrinkDetail({Key? key,@required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text(drink["strDrink"]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: drink["idDrink"],
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(drink["strDrinkThumb"]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
