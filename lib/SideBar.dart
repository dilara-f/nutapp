import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_nutrition_app/screens/Foods.dart';
import 'package:my_nutrition_app/screens/Recipes/Recipes.dart';

import 'main.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBar createState() => _SideBar();
}


class _SideBar extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green[100],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Kullanıcı Adı'),
            accountEmail: Text('Example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://previews.123rf.com/images/choreograph/choreograph1208/choreograph120800029/14926911-a-beautiful-girl-eating-healthy-food.jpg',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: (0.50),
                image: NetworkImage(
                    'https://images.everydayhealth.com/images/go-green-for-better-health-00-1440x810.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset('lib/icons/home.png', width: 35, height: 35),
            title: Text('Ana Sayfa'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          ListTile(
            leading: Image.asset('lib/icons/user.png', width: 35, height: 35),
            title: Text('Profil'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Image.asset('lib/icons/calories.png', width: 35, height: 35),
            title: Text('Kalori Takibi'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset('lib/icons/diet.png', width: 35, height: 35),
            title: Text('Yiyecekler'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Foods()));
            },
          ),
          ListTile(
            leading:
                Image.asset('lib/icons/cooking.png', width: 35, height: 35),
            title: Text('Tarifler'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Recipes()));
            },
          ),
        ],
      ),
    );
  }
}
