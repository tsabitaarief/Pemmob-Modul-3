import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> data = [];

  @override
  void initState() {
    super.initState();

    // Inisialisasi TabController
    _tabController = TabController(length: 2, vsync: this);

    // Isi data listview
    for (int i = 0; i < 20; i++) {
      data.add("Data ke $i ");
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:Colors.blueAccent,
            bottom: TabBar(
              indicatorColor: Colors.white,
              controller: _tabController,
              tabs: const [
                Tab(
                  child: Text(
                    'For You',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(child: Text(
                    'Following',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              Center(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(border: Border.all()),
                      padding: const EdgeInsets.all(14),
                      child: Text(data[index]),
                    );
                  },
                ),
              ),
              Center(
                child: GridView(
                    padding: const EdgeInsets.all(20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
