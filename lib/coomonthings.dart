

import 'package:flutter/material.dart';
import 'package:groceryapp/cart.dart';
import 'package:groceryapp/description.dart';

class CustomMaterialButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  CustomMaterialButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white,fontSize: 24),
        ),
        color: Color(0xFF009959), // Change the color as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Adjust the border radius as needed
        ),
      ),
    );
  }
}



class CustomCard extends StatefulWidget {
  final String image;
  final String title;
  final String redText;
  final String? description;

  CustomCard({
    required this.image,
    required this.title,
    required this.redText,
     this.description,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

String product='';
class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return Description(
          image: widget.image,
          title: widget.title,
          redText: widget.redText,
          description: widget.description,
        );
      },
    ),
  );
},
      child: Card(
        color: Color.fromARGB(255, 237, 235, 235),
        child: Padding(
          padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.image), // Use your own image loading logic
              SizedBox(height: 10),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.redText,
                style: TextStyle(
                  color: Colors.red,
                  
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 5),
              FloatingActionButton(
      onPressed: () {
                  Cartlist.addItem(
                    title: widget.title,
                    redText: widget.redText,
                  );
                },
      backgroundColor: Color(0xFF009959),
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cartlist extends StatefulWidget {
  static List<String> titles = [];
  static List<String> redTexts = [];

  Cartlist();

  @override
  State<Cartlist> createState() => _CartlistState();

  static void addItem({required String title, required String redText}) {
    titles.add(title);
    redTexts.add(redText);
  }
}

class _CartlistState extends State<Cartlist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Cartlist.titles.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(Cartlist.titles[index]),
          subtitle: Text(Cartlist.redTexts[index]),
        );
      },
    );
  }
}