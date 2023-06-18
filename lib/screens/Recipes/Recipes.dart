import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_nutrition_app/screens/Recipes/recipe_card.dart';

import '../../SideBar.dart';

class Recipes extends StatefulWidget {
  Recipes();

  @override
  _Recipes createState() => _Recipes();
}

class _Recipes extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar:AppBar(
        backgroundColor: Colors.green[100],
      title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.restaurant_menu),
        SizedBox(width: 10),
        Text('Tarifler'),
      ],
    ),
    ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Text(
            "Bugün ne pişirmek istiyorsun?",
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.white70,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 34.0,
                      ),
                      hintText: "Tarif icin ara",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 12.0),
          RecipeCard(
            title: 'My recipe',
            rating: '4.9',
            cookTime: '30 min',
            thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
          ),
        ],
      ),
    );
  }
}
