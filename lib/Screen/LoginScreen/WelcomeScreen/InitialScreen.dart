import 'dart:async';
import 'package:flutter/material.dart';

import 'Loginscreen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  // int _currentImageIndex = 0;
  int _currentImageIndex = 0;

  final List<String> images = [
    'assets/Initiscreenimage.png',
    'assets/Payments.jpg',
    'assets/Purchase.jpg',
    'assets/GST.jpg',
    'assets/Report.jpg',
  ];

  final List<String> texts = [
    'Invoices',
    'Payment',
    'Purchase',
    'GST',
    'Report'
  ];

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start the timer that automatically changes the image and text every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % images.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 218, 184),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 150),
            // AnimatedSwitcher for image
            Center(
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.transparent, // Replace white with transparency
                    BlendMode
                        .multiply, // Multiply the image's color with the filter
                  ),
                  child: Image(
                    key: ValueKey(_currentImageIndex),
                    image: AssetImage(images[_currentImageIndex]),
                    height: 300,
                    width: 500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // AnimatedSwitcher for text
            Center(
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: Text(
                  texts[_currentImageIndex],
                  key: ValueKey(_currentImageIndex),
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors
                        .black, // Adjust color to contrast with background
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                "There’s everything for ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color:
                      Colors.black, // Adjust color to contrast with background
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'your business',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color:
                      Colors.black, // Adjust color to contrast with background
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(width: 30),
                    const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff278942),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Loginscreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        size: 30,
                        color: Color(0xff278942),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
