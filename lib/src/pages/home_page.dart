import 'package:flutter/material.dart';
import 'package:github/src/pages/book-store/book-store/book_store.dart';
import 'package:github/src/pages/book-store/slide_show.dart';
import 'package:github/src/pages/coffee-shop/main_coffe.dart';
import 'package:github/src/pages/cookfinder-app/home-screen/home_cookfinder.dart';
import 'package:github/src/pages/plant-shop/plant-shope/plant_shop.dart';
import 'package:github/src/pages/rent-app/rent-home/rent_home.dart';
import 'package:github/src/pages/shoes-store/shoes-store/shoes_store.dart';
import 'package:github/src/pages/whatsapp-redesign/home_whatsapp.dart';
import 'package:github/src/utils/transition_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diseños'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, createRouteFade(ruta: SlideShowBook()));
                    },
                    child: Text('Book Store')),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, createRouteFade(ruta: PlantShopPage()));
                    },
                    child: Text('Plant Shop App')),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, createRouteFade(ruta: ShoesStorePage()));
                    },
                    child: Text('Shoes Store')),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, createRouteFade(ruta: HomeCookfinderPage()));
                    },
                    child: Text('Cookfinder')),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, createRouteFade(ruta: RentApp()));
                    },
                    child: Text('Rent App')),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, createRouteFade(ruta: WhatsAppHome()));
                    },
                    child: Text('WhatsApp Redesign')),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, createRouteFade(ruta: MainCoffe()));
                    },
                    child: Text('Coffee Shop')),
              ),
            ],
          ),
        ));
  }
}
