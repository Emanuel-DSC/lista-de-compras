// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lista_mercado/constants/padding.dart';

class CategoriesCard extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String image;

  const CategoriesCard(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              child: Card(
                color: Theme.of(context).colorScheme.secondary,
                elevation: 0,
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 125,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage(image))),
                  ),
                ),
              ),
            ),
            SizedBox(height: kpadding5),
             Text(text, 
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w700, 
            fontSize: 14),),
          ],
        ));
  }
}
