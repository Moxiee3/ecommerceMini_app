import 'package:ecommerce_app/components/my_drawer.dart';
import 'package:ecommerce_app/components/my_prouct_tile.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
// access productin shop
    final Products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shop Page"),
          actions: [
            // go to button cart
            IconButton(
                onPressed: () => Navigator.pushNamed(context, '/cart_page'),
                icon: const Icon(Icons.shopping_cart_checkout_outlined))
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),

            // shop subtitle
            Center(
                child: Text(
              "Pick  from  a selected list of premium product",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: Products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //get each individual product from shop

                  final Product = Products[index];

                  //return as a product tile ui
                  return MyProuctTile(product: Product);
                },
              ),
            ),
          ],
        ));
  }
}
