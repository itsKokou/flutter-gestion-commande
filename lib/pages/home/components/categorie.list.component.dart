import 'package:flutter/material.dart';
import 'package:flutter_projet1/core/constants/colors.constants.dart';
import 'package:flutter_projet1/core/constants/size.constants.dart';
import 'package:flutter_projet1/core/models/categorie.model.dart';
import 'package:flutter_projet1/core/services/categorie.service.dart';

class CategorieList extends StatefulWidget {
  const CategorieList({super.key});

  @override
  State<CategorieList> createState() => _CategorieListState();
}

class _CategorieListState extends State<CategorieList> {

  List<Categorie> categories = CategorieService.findAll();
  int categorieSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kokPadding),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return categorieItem(index);
          },
        ),
      )
    );
  }

  categorieItem(int index){
    return InkWell(//pour rendre container cliquable
    onTap: (){
      setState(() {
        categorieSelected=index;
      });
    },
      child: Container(
                decoration: BoxDecoration(
                  color: kokPrimaryColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(kokPadding),
                child: Center(child: Text(categories[index].libelle, style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: categorieSelected==index? Colors.black : Colors.white 
                ),)),
                
              ),
    );
  }
}