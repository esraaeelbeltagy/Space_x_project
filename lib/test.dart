import 'package:flutter/material.dart';

class ShaderMaskExampleScreen extends StatelessWidget {
  const ShaderMaskExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShaderMask Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Original Image
            Image.network(
              'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20220512131412/Student-Chapter-Article-Banner.png',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            const Text("Original Image",
                style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white)),

            const SizedBox(height: 20.0), // Add some spacing between the images

            // Image with ShaderMask
            ShaderMask(
              shaderCallback: (Rect bounds) {
                // Create a linear gradient shader for the mask
                return const LinearGradient(
                  colors: [Colors.orange, Colors.blue],
                  stops: [0.5, 0.9],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds);
              },
              child: Image.network(
                'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20220512131412/Student-Chapter-Article-Banner.png',
                width: 150.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "Shadered Image",
              style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
