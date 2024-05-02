
import 'package:flutter/material.dart';
import 'package:flutter_projet1/pages/cart/cart.page.dart';
import 'package:flutter_projet1/pages/home/components/categorie.list.component.dart';
import 'package:flutter_projet1/pages/home/components/produit.list.component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  //variable pour recup uri de la page 
  static String routeName="/home";
  @override
  Widget build(BuildContext context) {

    return Scaffold( //un layout
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, CartPage.routeName);//appeler une route par son nom
          }, icon: const Icon(Icons.shopping_cart,color: Colors.white,))
        ],
      ),
      drawer:  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white))
            ),
            ListTile(
              leading: const Icon(Icons.home),//Partie avant
              title: const Text("Home"),
              onTap: (){//quand click
                Navigator.pop(context);//Supp la page en cours
                Navigator.pushNamed(context, HomePage.routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),//Partie avant
              title: const Text("Cart"),
              onTap: (){//quand click
                Navigator.pop(context);//Supp la page en cours
                Navigator.pushNamed(context, CartPage.routeName);
              },
            )
          ],
        ),
      ),
      //Le menu 
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text("Catégories",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black
            ),),
          ),
          //List de Categorie
          CategorieList(),
          SizedBox(
            width: double.infinity,
            child: Text("Produits",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black
            ),),
          ),
          ProduitList(),
        ],
        )
    );
  }
}