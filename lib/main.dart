import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const AboutMe(),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    '/Users/zaidanfawwasz/Documents/Collagee/myapp/assets/background.jpg'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(
                              0.85), // Semi-transparent white background
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Profile Picture
                              const CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                    '/prak_flutter/assets/prof_pic.jpg'),
                              ),
                              const SizedBox(height: 20),

                              // Full Name
                              const Text(
                                'Fernandio Farrel Putra Susilo',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),

                              // NRP
                              const Text(
                                'NRP: 5026221102',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 16),

                              // Fun Fact
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  'Fun Fact: saat ngerjain tugas ini belum tidur 2 hari!',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                              const SizedBox(height: 32),
                            ]))))));
  }
}
