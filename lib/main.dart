import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {"title": "Basics", "icon": Icons.backpack_sharp, "progress": 4, "color": Colors.blue},
      {"title": "Occupations", "icon": Icons.cases, "progress": 1, "color": Colors.green},
      {"title": "Conversations", "icon": Icons.message, "progress": 3, "color": Colors.red},
      {"title": "Places", "icon": Icons.location_on, "progress": 1, "color": Colors.yellow},
      {"title": "Family members", "icon": Icons.group_add_rounded, "progress": 3, "color": Colors.purple},
      {"title": "foods", "icon": Icons.fastfood, "progress": 2, "color": Colors.orange},
    ];

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    Text("course", style: TextStyle(color: Colors.white)),
                    Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20.0),
                Center(child: Text("Spanish", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white))),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text("Beginner", style: TextStyle(color: Colors.white)),
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("43%", style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Completed", style: TextStyle(fontSize: 10.0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              padding: const EdgeInsets.all(10.0),
              children: List.generate(items.length, (index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: items[index]["color"]!.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          items[index]["icon"],
                          size: 40.0,
                          color: items[index]["color"],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        items[index]["title"],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      LinearProgressIndicator(
                        value: items[index]["progress"] / 5,
                        color: items[index]["color"],
                        backgroundColor: items[index]["color"]!.withOpacity(0.2),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "${items[index]["progress"]}/5",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}