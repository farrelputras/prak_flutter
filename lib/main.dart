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
                image: AssetImage('/prak_flutter/assets/bg.jpg'),
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
                                  fontFamily: 'Montserrat',
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
                                  color: const Color.fromRGBO(66, 133, 244, 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  'Fun Fact:\nLaptop blue screen 2x pas install AndroidStudio...',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 8),

                              // Contact
                              ElevatedButton(
                                child: const Text('Contact Me!'),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) =>
                                          AlertDialog(
                                              title:
                                                  const Text('Reach me out!'),
                                              content: const Text(
                                                  'Instagram: @farrelputras\nLinkedIn: Fernandio Farrel Putra Susilo'),
                                              actions: [
                                                TextButton(
                                                    child: const Text('OK'),
                                                    onPressed: () =>
                                                        Navigator.pop(context))
                                              ]));
                                },
                              )
                            ]))))));
  }
}
