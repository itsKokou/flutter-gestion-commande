
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //variable pour recup uri de la page 
  static String routeName="/cart";
  @override
  Widget build(BuildContext context) {

    return Scaffold( //un layout
      appBar: AppBar(
        title: const Text("Panier"),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, CartPage.routeName);//appeler une route par son nom
          }, icon: const Icon(Icons.shopping_cart,color: Colors.white,))
        ],
      ),
      body: Container(
        child: const Text("Test"),
      )
    );
  }
}