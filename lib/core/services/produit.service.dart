

import 'package:flutter_projet1/core/models/produit.model.dart';

class ProduitService{
  static List<Produit> findAll(){
    return [
      Produit(id: 1, libelle: "Sac",prix: 1000,photo: ""),
      Produit(id: 2, libelle: "Robe",prix: 1500,photo: ""),
      Produit(id: 3, libelle: "Pantalon",prix: 2000,photo: ""),
      Produit(id: 4, libelle: "Chemise",prix: 400,photo: ""),
      Produit(id: 5, libelle: "Jacket",prix: 1600,photo: ""),
      Produit(id: 6, libelle: "Short",prix: 500,photo: ""),
      Produit(id: 7, libelle: "Veste",prix: 900,photo: ""),
      Produit(id: 8, libelle: "T-shirt",prix: 1000,photo: ""),
      Produit(id: 9, libelle: "Jupe",prix: 1400,photo: ""),
    ];
  }
}