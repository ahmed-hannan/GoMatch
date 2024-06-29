//import 'dart:collection';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

// ignore: must_be_immutable
class Car3 extends StatefulWidget {
  int value2;
  Car3({
    super.key,
    required this.value2,
  });

  @override
  State<Car3> createState() => Car1State();
}

class Car1State extends State<Car3> {
// bool seatSelected=false;
  bool seatSelected=false;
  bool seatbooked= false;
  
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Right Seat'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('The Seat has been selected'
              
              ,textAlign: TextAlign.left,),
              IconButton(
              
              icon:  SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/tick.png'),
              
                
              )
              
              ,
              
              onPressed:(){
                setState(() {
                //carModel.incrementcounter();
              });
                Navigator.of(context).pop();
             
              },
              ),
              const SizedBox(height: 10),
            ],
          ),
          
        );
      },
    );
  }
   void _showDialog2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Driver'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage("assets/wheel.png"), size: 50,),
              SizedBox(height: 10),
              Text('Name: Murtaza Malik\nGender: Male\nRating: 4.8'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
   void _showDialog3() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Front Left Seat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage('assets/woman.png'),size: 40,),
              SizedBox(height: 10),
              Text('Name: Maryam Farooq\nAge: 24\nGender: Female\nDestination: Faisal Medicos\nPassenger Rating: 4.9/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

   void _showDialog4() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Left Seat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage('assets/man.png'), size:50),
              SizedBox(height: 10),
              Text('Name: Abdullah Khan\nAge: 22\nGender: Male\nDestiantion: WAPDA(IESCO) Office\nPassenger Rating: 5/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void _showDialog5() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom MiddleSeat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage('assets/man.png'), size:50),
              SizedBox(height: 10),
              Text('Name: Ahad Farrukh Mailk\nAge: 49\nGender: Male\nDestination: Al Shifa Hospital\nPassenger Rating: 4.5/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  

  @override
  Widget build(BuildContext context) {
  final carModel = Provider.of<CarModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text(
          'Black Toyota Prius \nLHR-120',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)
        
          ),
          textAlign: TextAlign.center,
        ),
        
        
        ),
      body: Builder(
        builder: (context) => Container(
          color: Colors.white,

      child:Stack(children: [
      
      Positioned(
        top: 10,
        left: 10,
        child: IconButton(
              
              icon:  SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/goodcar.png'),
              
                
              )
              
              ,
              
              onPressed:(){
                
                null;
             
              },
              ),
        
        
      ),
      
      Positioned( 
        bottom: 80,
        right: 50,
        child: ElevatedButton
        (
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(226, 149, 255, 57),
            ),
            child: const Text(
              'Return',
              style: TextStyle(
                color: Color.fromARGB(255, 22, 22, 22),
              ),
            ),
            onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
        )
      ),
      Positioned(
        bottom: 150,
        right: 20,
        child: IconButton(
              
              icon: (carModel.isBooked && carModel.carChosen ==3)? SizedBox(
                 width: 150,
                height: 150,
                child: Image.asset('assets/seat3.png'),
              
                
              )
               : SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/seat2.png'),
              
                
              )
             
              ,
              
              onPressed:(){
                
                setState(() {
                if(!carModel.isBooked)
                {
                  _showDialog();
                  seatSelected = true;
                  carModel.bookcar(3);
                  seatbooked = carModel.isBooked;

                }
                else{
                  if(carModel.carChosen != 3)
                  {
                    null;
                  }
                }
                });
             
              },
              ),
        
        
      ), 
      Positioned(
        top: 50,
        right: 50,
        child: IconButton(
              
              icon:  SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/seat.png'),
              
                
              )
              
              ,
              
              onPressed:(){
                
                _showDialog2();
             
              },
              ),
        
        
      ),

      Positioned(
        top: 50,
        left: 50,
        child: IconButton(
              
              icon:  SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/seat.png'),
              
                
              )
              
              ,
              
              onPressed:(){
                
                _showDialog3();
             
              },
              ),
        
        
      ),
      Positioned(
        bottom: 150,
        left: 20,
        child: IconButton(
              
              icon:  SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/seat.png'),
              
                
              )
              
              ,
              
              onPressed:(){
                
                _showDialog4();
             
              },
              ),
        
        
      ),
      Positioned(
        bottom: 150,
        left: 120,
        child: IconButton(
              
              icon:  SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/seat.png'),
              
                
              )
              
              ,
              
              onPressed:(){
                
                _showDialog5();
             
              },
              ),
        
        
      ),
      
      
      if(carModel.isBooked && (carModel.carChosen==3))
      Positioned(
        right: 20,
        bottom: 30,
        child:ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(226, 254, 29, 9),
            ),
          child: const Text('Unbook Car',style: TextStyle(color:Color.fromARGB(255, 0, 0, 0)),),
          onPressed: (){
            setState(() {
              if(carModel.isBooked && (carModel.carChosen == 3))
              {
                carModel.unbookcar();
                seatbooked = false;
              }
            });
          },
        ))
    ]
    
    ),
      ),
      ),
    );
  }
}
