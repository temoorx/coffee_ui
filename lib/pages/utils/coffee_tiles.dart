// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({required this.coffeeImagePath, required this.coffeeName, required this.coffeePrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
          padding: EdgeInsets.all(12),
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //CoffeeImage
              ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(coffeeImagePath)),
              //CoffeName
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(coffeeName, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('With Oat Milk', style: GoogleFonts.poppins(color: Colors.grey[400])),
              ),
              //Price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('\$', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 15)),
                        Text(coffeePrice, style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 15)),
                      ],
                    ),
                    Container(padding: EdgeInsets.all(4.0), decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(12.0)), child: Icon(Icons.add))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
