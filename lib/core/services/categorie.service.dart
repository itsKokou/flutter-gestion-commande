import 'package:flutter_projet1/core/models/categorie.model.dart';

class CategorieService{
  static List<Categorie> findAll(){
    return [
      Categorie(id: 1, libelle: "Sac"),
      Categorie(id: 2, libelle: "Robe"),
      Categorie(id: 3, libelle: "Pantalon"),
      Categorie(id: 4, libelle: "Chemise"),
      Categorie(id: 5, libelle: "Jacket"),
      Categorie(id: 6, libelle: "Short"),
      Categorie(id: 7, libelle: "Veste"),
      Categorie(id: 8, libelle: "T-shirt"),
      Categorie(id: 9, libelle: "Jupe"),
    ];
  }
}