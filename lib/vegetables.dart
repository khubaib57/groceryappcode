import 'package:flutter/material.dart';
import 'package:groceryapp/coomonthings.dart';
import 'package:groceryapp/mainscreen.dart';

class Vegtables extends StatefulWidget {
  const Vegtables({super.key});

  @override
  State<Vegtables> createState() => _VegtablesState();
}

class _VegtablesState extends State<Vegtables> {
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
              return MainScreen();
            }));
          },
          icon: Icon(Icons.keyboard_arrow_left),
          color: Colors.black,
          iconSize: 40,
        ),
        
          
          title:Text( 'vegtables',style:
          TextStyle(
              color: Colors.grey, fontSize: 24, fontFamily: 'Poppins'),
              ),
              centerTitle: true,

            actions:[
              Icon(Icons.search,color: Color(0xFF009959),)
        ]
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Wrap(
              spacing: 20,
              runSpacing: 20,
            children:[
              CustomCard(image:'assets/veg-pees.png',title:"Red Beens",redText: "1kg, 4\$",description: "Red onions are cultivars of the onion (Allium cepa), and have purplish-red skin and white flesh tinged with red. They are most commonly used in cooking,",),
              CustomCard(image:'assets/veg-tomato.png',title:"Red Beens",redText: "1kg, 4\$",description: "Red onions are cultivars of the onion (Allium cepa), and have purplish-red skin and white flesh tinged with red. They are most commonly used in cooking,",),
              CustomCard(image:'assets/veg-capsiccums.png',title:"Red Beens",redText: "1kg, 4\$",description: "Red onions are cultivars of the onion (Allium cepa), and have purplish-red skin and white flesh tinged with red. They are most commonly used in cooking,",),
              CustomCard(image:'assets/veg-potatoes.png',title:"Red Beens",redText: "1kg, 4\$",description: "Red onions are cultivars of the onion (Allium cepa), and have purplish-red skin and white flesh tinged with red. They are most commonly used in cooking,",),
              CustomCard(image:'assets/veg-cauliflower.png',title:"Red Beens",redText: "1kg, 4\$",description: "Red onions are cultivars of the onion (Allium cepa), and have purplish-red skin and white flesh tinged with red. They are most commonly used in cooking,",),
              CustomCard(image:'assets/veg-onion.png',title:"Red Beens",redText: "1kg, 4\$",description: "Red onions are cultivars of the onion (Allium cepa), and have purplish-red skin and white flesh tinged with red. They are most commonly used in cooking,",),
            ]
          ),
        ),
      ),
          
            
          
        
      
    );
  }
}
