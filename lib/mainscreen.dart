import 'package:flutter/material.dart';
import 'package:groceryapp/coomonthings.dart';
import 'package:groceryapp/vegetables.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 229, 226, 226),
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      child: Image.asset(
                        'assets/face.png',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Good morning",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF979899),
                          fontFamily: 'Poppins'),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 80,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xFF009959),
                            size: 20,
                          ),
                          Text("Flat"),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF009959),
                        size: 20,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontSize: 18, fontFamily: 'Poppins'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
            Image.asset(
              'assets/leftmain.png'
            ),
            Image.asset(
              'assets/off25.png'
            ),
            Image.asset(
              'assets/rightmain.png'
            ),
          ],),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [
                Row(children: [
                  Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                    ),
                    Image.asset(
              'assets/yummy emoji.png'
            ),
            Spacer(),
            Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF009959),
                          ),
                    ),
                ],),
                SizedBox(height: 10,),
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                  Image.asset(
              'assets/apple.png'
            ),
            InkWell(
              child: Image.asset(
                'assets/brocli.png'
              ),
              onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Vegtables();
            }));
  }),
            Image.asset(
              'assets/cheese.png'
            ),
            Image.asset(
              'assets/meat.png'
            ),
                ],),
                
                SizedBox(height: 10,),
                Row(children: [
                  Text(
                      "Best Selling",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                    ),
            Spacer(),
            Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF009959),
                          ),
                    ),
                ],),
                SizedBox(height: 20,),
                Wrap(
                  spacing: 20,
                  children: [
                  CustomCard(image:'assets/capsiccum.png',title:"Bell Pepper Red",redText: "1kg, 4\$",),
                  CustomCard(image:'assets/meatonboard.png',title:"lamp meat",redText: "1kg, 45\$",),
                ],)
              ],
            ),

          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),label: ''), 
           BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Color(0xFF009959),size: 30,),label: ''),
                 BottomNavigationBarItem(icon: Icon(Icons.note,color: Colors.grey),label: ''),
                 BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black),label: ''),
      ]),
    );
  }
}
