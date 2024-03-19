import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gograb'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Row(
                children: [
                  Text(
                    'Your Favorites',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 270),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.green),
                      ),
                    ),
                    child: const Text(
                      'Edit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/goride.jpg",
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: Text('GoRide'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/gocar.jpg",
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: Text('GoCar'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/gofood.jpg",
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: Text('GoFood'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/gosend.jpg",
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: Text('GoSend'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/gomart.jpg",
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: Text('GoMart'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/gopulsa.jpg",
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: Text('GoPulsa'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/checkin.jpg",
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: Text('CheckIn'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
