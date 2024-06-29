import 'package:flutter/material.dart';
import 'package:helloworld/main.dart';
import 'car1.dart';
import 'package:provider/provider.dart';
import 'car2.dart';
import 'car3.dart';
import 'car4.dart';

class DisplayScreen extends StatefulWidget {
  final String name;
  final String password;

  const DisplayScreen({super.key, required this.name, required this.password});
  @override
  DisplayScreenState createState() => DisplayScreenState();
}

class DisplayScreenState extends State<DisplayScreen> {
  bool canBook = true;
  int iconchosen = -1;
  //int? _selectedOption = 1;
  int value1 = 1;
 
  @override
  Widget build(BuildContext context) {
    final carModel = Provider.of<CarModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('From: ${widget.name}\nTo: ${widget.password} '),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/map.png', // Make sure this path is correct
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: 50,
            child: IconButton(
              icon: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/car.png'),
              ),
              // onPressed: () => _showPopup(
              //     context,
              //     'White Suzuki Mehran CSR-120\nPassengers:\nFront Left: Ali Khan(M) Age:30\nBack Left: Aisha(F) Age: 29\nBack Right: Rafay(M) Age: 24\n1 Remaining Seat',
              //     1),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Car1(
                      value2: carModel.val3,
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 100,
            right: 50,
            child: IconButton(
              icon: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/bigcar.png'),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Car2(
                      value2: carModel.val3,
                    ),
                  ),
                );
              }
            ),
          ),
          Positioned(
            bottom: 100,
            left: 50,
            child: IconButton(
              icon: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/goodcar.png'),
              ),
              // onPressed: () => _showPopup(
              //     context,
              //     'White Toyota Prius ICT-41\nPassengers:\nFront Left: Murtaza Baig(M) Age:29\nBack Left Mahsham Babar(M) Age:38\nBack Right: Abullah(M) Age:22\n1 Remaining Seat',
              //     3),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Car3(
                      value2: carModel.val3,
                    ),
                  ),
                );
              },
            
            ),
          ),
          Positioned(
            bottom: 100,
            right: 40,
            child: IconButton(
              icon: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/goodcar.png'),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Car4(
                      value2: carModel.val3,
                    ),
                  ),
                );
              },
            ),
          ),
          // Positioned(
          //     bottom: 20,
          //     left: 100,
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: Color.fromARGB(228, 0, 0, 0),
          //       ),
          //       child: Text(
          //         carModel.val3.toString(),
          //         style: TextStyle(
          //           color: Color.fromARGB(255, 248, 9, 9),
          //         ),
          //       ),
          //       onPressed: () {
          //         setState(() {
          //           carModel.incrementcounter();
          //         });
          //       },
          //     ))
        if(carModel.isBooked)
        Positioned(
        right: 120,
        bottom: 10,
        child:ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 219, 32, 15),
            ),
          child: const Text('Unbook Car',style: TextStyle(color:Color.fromARGB(255, 0, 0, 0)),),
          onPressed: (){
            setState(() {
              if(carModel.isBooked)
              {
                carModel.unbookcar();
                
              }
            });
          },
        )),
        
        
        ],
      ),
    );
  }
}
