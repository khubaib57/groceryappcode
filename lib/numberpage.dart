import 'package:flutter/material.dart';
import 'package:groceryapp/coomonthings.dart';
import 'package:groceryapp/mainscreen.dart';
import 'package:groceryapp/rough.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
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
                  return Rough();
                }));
              },
              icon: Icon(Icons.keyboard_arrow_left),
              color: Colors.black,
              iconSize: 40,
            )),
        body: Container(
          margin: EdgeInsets.only(left: 50, right: 50, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/carrot1.png',
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter your mobile ",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: Text(
                  "Number ",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We will send you a verification code",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF979899),
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+44|',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        fontFamily: 'Poppins'),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '(000)000-00-00',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontFamily: 'Poppins'),
                        border: InputBorder.none,  
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              CustomMaterialButton(
                buttonText: "Continue",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainScreen();
                  }));
                },
              ),
              SizedBox(
                height: 15,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF979899),
                      ),
                      children: [
                        TextSpan(
                          text:
                              "By clicking on “Continue” you are agreeing to our ",
                        ),
                        TextSpan(
                          text: "terms of use",
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
