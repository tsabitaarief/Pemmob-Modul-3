import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final textEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 9',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peduli Lindungi'),
          backgroundColor:
              Colors.blueAccent, 
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Entering a public space?',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white), 
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Stay alert to stay safe',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                        Image.asset(
                          'images/entering.jpg',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 50),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black),
                      icon: Icon(Icons.arrow_drop_down),
                      label: Text('Check-In Preference',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    SizedBox(width: 70),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset('images/scan.jpg'),
                      label: Text('Check-In',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _buildMenuRow([
                      _buildMenuItem('COVID-19 Vaccine', 'images/sertif.jpg',
                          'COVID-19 Vaccine'),
                      _buildMenuItem('Covid-19 Test Result',
                          'images/tescovid.jpg', 'Vaksinasi'),
                      _buildMenuItem('EHAC', 'images/ehac.jpg', 'EHAC'),
                    ]),
                    const SizedBox(height: 10),
                    _buildMenuRow([
                      _buildMenuItem('Travel Regulations', 'images/travel.jpg',
                          'Travel Regulations'),
                      _buildMenuItem(
                          'Telemedicine', 'images/telemed.jpg', 'Telemedicine'),
                      _buildMenuItem('Healthcare Facility', 'images/faskes.jpg',
                          'Healthcar Facility'),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 40, height: 40),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
