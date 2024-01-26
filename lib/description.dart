import 'package:flutter/material.dart';
import 'package:groceryapp/cart.dart';
import 'package:groceryapp/coomonthings.dart';
import 'package:groceryapp/vegetables.dart';

class Description extends StatefulWidget {
  final String image;
  final String title;
  final String redText;
  final String? description;
  Description({
    required this.image,
    required this.title,
    required this.redText,
    this.description,
  });

  @override
  State<Description> createState() => _DescriptionState();
}

int quantity = 0;

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
   
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Vegtables();
            }));
          },
          icon: Icon(Icons.keyboard_arrow_left),
          color: Colors.black,
          iconSize: 40,
        ),
        
        actions: [
          Icon(Icons.search,color: Color(0xFF009959),),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/des-elipse.png'),
                Image.asset(widget.image),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            quantity--;
                          });
                        },
                        child: Icon(Icons.dashboard),
                        backgroundColor: Colors.grey,
                      ),
                      Text(
                        quantity.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Icon(Icons.add),
                        backgroundColor: Color(0xFF009959),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text(
                      widget.redText,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.description!,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/des-leave.png'),
                                Column(
                                  children: [
                                    Text(
                                      "100%",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF009959),
                                      ),
                                    ),
                                    Text(
                                      "Organic",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 50,),
                                Row(
                              children: [
                                Image.asset('assets/des-1.png'),
                                Column(
                                  children: [
                                    Text(
                                      "1 year",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF009959),
                                      ),
                                    ),
                                    Text(
                                      "Expiration",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/des-star.png'),
                                Column(
                                  children: [
                                    Text(
                                      "8.4",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF009959),
                                      ),
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 50,),
                                Row(
                              children: [
                                Image.asset('assets/des-fire.png'),
                                Column(
                                  children: [
                                    Text(
                                      "80 kcal",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF009959),
                                      ),
                                    ),
                                    Text(
                                      "100gram",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                      ],
                  ),
                  ),
                  Spacer(),
                  CustomMaterialButton(
                buttonText: "add to cart",
                 onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Cart();
                  }));
                },
              ),
                ],
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
