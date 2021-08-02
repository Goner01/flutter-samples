import 'package:flutter/material.dart';
import 'package:github/src/pages/cookfinder-app/home-screen/widgets/widgets.dart';

class CategoriesFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        physics: BouncingScrollPhysics(),
        children: List.generate(
            categoriesFood.length,
            (i) => Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            offset: Offset(0, 4),
                            blurRadius: 8)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        categoriesFood[i].img,
                        height: size.height * 0.1,
                        width: size.width * 0.2,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        categoriesFood[i].name,
                        style: TextStyle(
                            color: categoriesFood[i].colorText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
