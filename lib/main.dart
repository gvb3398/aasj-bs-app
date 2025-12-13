import 'package:flutter/material.dart';

void main() {
  runApp(const AasjBsApp());
}

class AasjBsApp extends StatelessWidget {
  const AasjBsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AASJ BS',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.home_repair_service,
                size: 90, color: Colors.amber),
            SizedBox(height: 20),
            Text(
              'AASJ BS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We Build Services',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AASJ BS'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          serviceCard('Construction Services'),
          serviceCard('Cleaning Services'),
          serviceCard('POP & Painting'),
          serviceCard('Concrete Works'),
          serviceCard('Welding'),
          serviceCard('Glass & Aluminum Works'),
          serviceCard('Architectural Design & Planning'),
          serviceCard('Security Systems'),
          serviceCard('Roofing Systems'),
          serviceCard('Plumbing Services'),
          serviceCard('Borehole Drilling'),
        ],
      ),
    );
  }

  Widget serviceCard(String title) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.check_circle, color: Colors.green),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
