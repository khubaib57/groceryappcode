import 'package:flutter/material.dart';
import 'package:groceryapp/rough.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

void _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Rough()),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF009959),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:65.0),
              child: Image.asset('assets/logo2.png.png',height: 164,width: 165,),
            ),
            SizedBox(height: 15,),
            Text(
              "Grocery",
              style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 60,fontWeight: FontWeight.w700,fontFamily: 'Poppins'),
            ),
             Text(
              "App",
              style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 60,fontWeight: FontWeight.w700,fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
    );
  }
}
