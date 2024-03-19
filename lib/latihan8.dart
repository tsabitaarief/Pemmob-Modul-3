import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 8',
      home: Scaffold(
        body: Stack(
          children: [
            Image.network(
              'https://pbs.twimg.com/profile_banners/3742082753/1588238027/600x200',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              top: 10,
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  SizedBox(width: 250),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 180,
              right: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Follow',
                    style: TextStyle(fontSize:16,
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
            Positioned(
              top: 120,
              left: 20,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1255787417463689217/xiLi1KIM_400x400.jpg',
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 240, left: 10),
                  child: Text(
                    'UPN Veteran Jawa Timur',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '@upnvjt_official',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Translate bio',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
