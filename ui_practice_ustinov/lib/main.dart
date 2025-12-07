import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Практика 3',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const UiPracticeScreen(),
    );
  }
}

class UiPracticeScreen extends StatelessWidget {
  const UiPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Практика 3'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            Text(
              "Hello world!",
              style: TextStyle(
                fontSize: 24.0, 
                fontWeight: FontWeight.w900, 
                fontStyle: FontStyle.italic, 
                color: Colors.orange, 
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                print("Кнопка нажата!"); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Нажми меня',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic, 
                ),
              ),
            ),

            const SizedBox(height: 40),

            Container(
              width: 200,
              height: 100,
              color: const Color(0xFF42A5F5),
              alignment: Alignment.center,
              child: const Text(
                'Это Container',
                style: TextStyle(color: Colors.white),
              ),
            ),
            
            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: const <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 40,
                ),
                SizedBox(width: 30), 
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}