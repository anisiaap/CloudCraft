import 'package:flutter/material.dart';
import 'EventPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CityScene',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CityScene'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              // Add functionality for info button
            },
          ),
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              // Add functionality for help button
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Add functionality for main event image tap
              },
              child: Container(
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/mainevent.jpg'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Main Event',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(2, 2),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventPage()),
                );
              },
              child: Text('Main Event Button'),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Change the count according to your dynamic list
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Title $index'), // Replace with dynamic title
                    onTap: () {
                      // Add functionality for each list tile
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
