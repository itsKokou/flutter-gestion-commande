import 'package:flutter/material.dart';
import 'package:flutter_projet1/core/constants/colors.constants.dart';
import 'package:flutter_projet1/core/constants/size.constants.dart';
import 'package:flutter_projet1/core/models/produit.model.dart';
import 'package:flutter_projet1/core/services/produit.service.dart';

class ProduitList extends StatelessWidget {
  const ProduitList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Produit> produits = ProduitService.findAll();
    return Expanded(//Pour qu'il prenne toute la place 
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: produits.length,//Le nbre d'element à afficher
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //nbre element par ligne du grid
          
          //crossAxisSpacing: 4,
          //mainAxisSpacing: 4,
          childAspectRatio: 0.75
        ), 
        itemBuilder:(context, index) {//Chaq element qu'on doit creer
          return ProduitItem(produit: produits[index], callBack: (){});
        }, 
      ),
    );
  }
}


class ProduitItem extends StatefulWidget {
  Produit produit;
  VoidCallback callBack;
  ProduitItem({super.key, required this.produit, required this.callBack});

  @override
  State<ProduitItem> createState() => _ProduitItemState();
}

class _ProduitItemState extends State<ProduitItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kokPrimaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      padding: const EdgeInsets.all(kokPadding),
      child: Hero(//represente les card de bootstrap
        tag: "${widget.produit.id}", 
        child: Text(widget.produit.libelle)//Souvent pour image
      ),
    );
  }
}