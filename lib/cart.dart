import 'package:flutter/material.dart';
import 'package:groceryapp/vegetables.dart';

class Cart extends StatefulWidget {
  final List<String>? titles;
  final List<String>? redTexts;

  Cart({
    this.titles,
    this.redTexts,
  });

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
        title: Text(
          'Cart',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 24,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: widget.titles?.length ?? 0,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Column(
              children: [
                Text(
                  widget.titles?[index] ?? '',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  widget.redTexts?[index] ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
