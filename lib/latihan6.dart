import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // List nama dan hobi
  final List<Map<String, String>> _data = [
    {'nama': 'Puti', 'hobi': 'Menangis'},
    {'nama': 'Cynthia', 'hobi': 'Panik'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 6',
      home: Scaffold(
        body: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) {
            final nama = _data[index]['nama'];
            final hobi = _data[index]['hobi'];
            return ListTile(
              leading: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              trailing: const Icon(Icons.more_vert),
              title: Text(nama!),
              subtitle: Text(hobi!),
            );
          },
        ),
      ),
    );
  }
}
