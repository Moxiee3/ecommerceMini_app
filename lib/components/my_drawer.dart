import 'package:ecommerce_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //Drawer Header
              DrawerHeader(
                child: Center(
                  child: Icon(Icons.shopping_bag,
                      size: 72,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),

              //shop tile
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: MyListTile(
                  text: "Shop",
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context),
                ),
              ),

              //Cart
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () => Navigator.pushNamed(context, '/cart_page'),
              ),
            ],
          ),
          //shop tile
          MyListTile(
            text: "Exit",
            icon: Icons.logout,
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, '/intro_page', (Route) => false),
          ),
        ],
      ),
    );
  }
}
