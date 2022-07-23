import 'package:coffeeui/pages/utils/coffee_tiles.dart';
import 'package:coffeeui/pages/utils/coffee_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//list of coffee types and is selected
  final List coffeeType = [
    [
      'Cappucino',
      true
    ],
    [
      'Latte',
      false
    ],
    [
      'Mocha',
      false
    ],
    [
      'Espresso',
      false
    ],
  ];
  void coffeeTypeSelected(int index) {
    setState(() {
      // this loop makes every selection false
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(child: Icon(Icons.menu)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        fixedColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text: Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text('Find the best \ncoffee for you', style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 25.0,
          ),
          //SearchBar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(hintText: 'Find Your Cofee...', hintStyle: GoogleFonts.inter(), prefixIcon: Icon(Icons.search), focusColor: Colors.green.shade600, focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey.shade600)), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),
          SizedBox(height: 25.0),
          //horizontal listview coffee tiles
          Container(
              height: 50,
              child: ListView.builder(
                itemCount: coffeeType.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoffeeType(
                      coffeeType: coffeeType[index][0],
                      isSelected: coffeeType[index][1],
                      onTap: () {
                        coffeeTypeSelected(index);
                      });
                },
              )),

          //horizontal listview Coffee tiles
          Container(
              margin: EdgeInsets.only(right: 25),
              height: 305,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/pexels-tyler-nix-2396220.jpg',
                    coffeeName: 'Cappucino',
                    coffeePrice: '  4.20',
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: Text('Special for you', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
