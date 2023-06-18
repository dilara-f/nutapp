import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_nutrition_app/screens/Recipes/recipeforapi.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "YOUR API KEY FROM YUMMLY API",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    if (response.statusCode == 200) {
      if (response.body != null) {
        Map data = jsonDecode(response.body);
        List _temp = [];

        for (var i in data['feed']) {
          _temp.add(i['content']['details']);
        }

        return Recipe.recipesFromSnapshot(_temp);
      } else {
        throw Exception('API response body is null');
      }
    } else {
      throw Exception('API request failed with status code ${response.statusCode}');
    }
  }
}
