import 'package:flutter/material.dart';
import 'package:groceryapp/numberpage.dart';

class Rough extends StatefulWidget {
  const Rough({super.key});

  @override
  State<Rough> createState() => _RoughState();
}

class _RoughState extends State<Rough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 200,
                      left: 0,
                      child: Image.asset(
                        'assets/elipse2.png',
                        width: 360,
                        height: 220,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 50,
                      child: Image.asset(
                        'assets/elipse3.png',
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: 0,
                      left: 190,
                      child: Image.asset(
                        'assets/elipse3.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      top: 250,
                      right: 220,
                      left: 0,
                      child: Image.asset(
                        'assets/carrot2.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: 0,
                      left: 330,
                      child: Image.asset(
                        'assets/carrot3.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/carrot1.png',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Get your groceries",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            Text(
                              "delivered to your home",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "The best delivery app in town for",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF979899),
                                  fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "delivering your daily fresh groceries",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF979899),
                                  fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){return NumberPage();}));
                              },
                              child: Text(
                                'SHOP NOW',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Color(0xFF009959),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Adjust the value for rounded corners
                              ),
                              minWidth: 100.0, // Set the desired width
                              height: 50.0, // Set the desired height
                            )
                          ]),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: Image.asset('assets/introlowerpic.png'),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
