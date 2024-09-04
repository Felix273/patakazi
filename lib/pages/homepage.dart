import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Text(
            "Hello Felix Ngitari.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 90,
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add your notification functionality here
            },
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 16.0,
              backgroundImage:
                  AssetImage('assets/avatar.jpg'), // Add your avatar image here
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              "Which Services Do You Need?",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              showCursor: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                hintText: "Search for Services",
                suffixIcon: Icon(Icons.mic),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "TOP CATEGORIES",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
