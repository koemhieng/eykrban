import 'package:embed/playvdo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<Map<String, String>> videos = [
  {
    'id': '7VmW90esGyU', 
    'title': 'Yorkmars Yai', 
    'image': 'https://img.youtube.com/vi/7VmW90esGyU/0.jpg',
    'description': 'An introduction to Yorkmars Yai concepts and tutorials.',
  
  },
  {
    'id': 'cR_zhEr6Va0', 
    'title': 'Flutter Basics - Introduction', 
    'image': 'https://img.youtube.com/vi/cR_zhEr6Va0/0.jpg',
    'description': 'A beginner’s guide to Flutter basics and introduction.'
  },
  {
    'id': 'dpxrrUO2tDE', 
    'title': 'Flutter Layouts Tutorial', 
    'image': 'https://img.youtube.com/vi/dpxrrUO2tDE/0.jpg',
    'description': 'Learn how to create flexible layouts in Flutter.'
  },
  {
    'id': 'bHfo54wWyiI', 
    'title': 'Building Responsive UIs in Flutter', 
    'image': 'https://img.youtube.com/vi/bHfo54wWyiI/0.jpg',
    'description': 'Tutorial on building responsive user interfaces in Flutter.'
  },
  {
    'id': 'D3axhx3ow5o', 
    'title': 'Flutter State Management', 
    'image': 'https://img.youtube.com/vi/D3axhx3ow5o/0.jpg',
    'description': 'Comprehensive guide to state management in Flutter.'
  },
  {
    'id': 'pNVUh4MvA_8', 
    'title': 'Advanced Flutter Animations', 
    'image': 'https://img.youtube.com/vi/pNVUh4MvA_8/0.jpg',
    'description': 'Explore advanced animations in Flutter with detailed examples.'
  },
  {
    'id': 'GtnHomUaCa8', 
    'title': 'Flutter App Performance Tips', 
    'image': 'https://img.youtube.com/vi/GtnHomUaCa8/0.jpg',
    'description': 'Improve your Flutter app performance with these essential tips.'
  },
  {
    'id': 'CjNNPD1l_lM', 
    'title': 'Integrating APIs in Flutter', 
    'image': 'https://img.youtube.com/vi/CjNNPD1l_lM/0.jpg',
    'description': 'Learn how to effectively integrate APIs in Flutter apps.'
  },
  {
    'id': '0hfNfV_GcCA', 
    'title': 'Using Firebase with Flutter', 
    'image': 'https://img.youtube.com/vi/0hfNfV_GcCA/0.jpg',
    'description': 'A detailed guide on using Firebase services in Flutter.'
  },
  {
    'id': '6jvrQIQ3cN8', 
    'title': 'Flutter Security Best Practices', 
    'image': 'https://img.youtube.com/vi/6jvrQIQ3cN8/0.jpg',
    'description': 'Learn best practices for securing Flutter apps.'
  },
  {
    'id': 'Ar3s-gfC5Os', 
    'title': 'Publishing Your Flutter App', 
    'image': 'https://img.youtube.com/vi/Ar3s-gfC5Os/0.jpg',
    'description': 'Step-by-step guide to publishing your Flutter app.'
  },
  {
    'id': 'ZEBeDqqCEzo', 
    'title': 'Flutter for Web Overview', 
    'image': 'https://img.youtube.com/vi/ZEBeDqqCEzo/0.jpg',
    'description': 'An overview of using Flutter for web development.'
  },
  {
    'id': 'hfjvs7uWbi9', 
    'title': 'Flutter Testing and Debugging', 
    'image': 'https://img.youtube.com/vi/hfjvs7uWbi9/0.jpg',
    'description': 'Learn how to test and debug Flutter applications.'
  },
  {
    'id': 'b9X9Pygh2Tk', 
    'title': 'Flutter Navigation and Routing', 
    'image': 'https://img.youtube.com/vi/b9X9Pygh2Tk/0.jpg',
    'description': 'Comprehensive guide to navigation and routing in Flutter.'
  },
  {
    'id': 'xNcDId_hWLM', 
    'title': 'Understanding Dart Language', 
    'image': 'https://img.youtube.com/vi/xNcDId_hWLM/0.jpg',
    'description': 'Get a deep understanding of Dart, the language behind Flutter.'
  },
  {
    'id': 'V_cVjTkPWmE', 
    'title': 'Creating Custom Widgets in Flutter', 
    'image': 'https://img.youtube.com/vi/V_cVjTkPWmE/0.jpg',
    'description': 'Learn how to create custom reusable widgets in Flutter.'
  },
  {
    'id': 'YJqs-5R8iGs', 
    'title': 'Flutter for iOS and Android', 
    'image': 'https://img.youtube.com/vi/YJqs-5R8iGs/0.jpg',
    'description': 'Learn how to build cross-platform apps for iOS and Android using Flutter.'
  },
  {
    'id': 'oW8oPhqds4g', 
    'title': 'Flutter Animations - Beginners to Advanced', 
    'image': 'https://img.youtube.com/vi/oW8oPhqds4g/0.jpg',
    'description': 'A complete guide to Flutter animations, from beginner to advanced.'
  },
  {
    'id': 'nCcWnmrnGhQ', 
    'title': 'Stateful vs Stateless Widgets', 
    'image': 'https://img.youtube.com/vi/nCcWnmrnGhQ/0.jpg',
    'description': 'Understand the difference between Stateful and Stateless widgets in Flutter.'
  },
  {
    'id': 'J_L9G5p6ur8', 
    'title': 'Flutter for Enterprise Applications', 
    'image': 'https://img.youtube.com/vi/J_L9G5p6ur8/0.jpg',
    'description': 'Learn how to build enterprise-grade applications using Flutter.'
  },
  {
    'id': 'jFsuvVdbs3Q', 
    'title': 'Flutter Multi-Platform Support', 
    'image': 'https://img.youtube.com/vi/jFsuvVdbs3Q/0.jpg',
    'description': 'Explore Flutter\'s multi-platform support and capabilities.'
  }
];Widget Lview() {
  return ListView.builder(
    itemCount: videos.length,
    itemBuilder: (context, index) {
      var video = videos[index];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Background color same as scaffold
            border: Border.all(color: Colors.grey), // Border color
            borderRadius: BorderRadius.circular(10.0), // Border radius for rounded corners
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Same border radius for the clip effect
            child: CupertinoButton(
              padding: EdgeInsets.all(8.0), // Padding inside the button for better layout
              onPressed: () {
                Get.to(() => VideoPlayerScreen(
                  videoId: video['id']!,
                  description: video['description']!, // Pass description
                ));
              },
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners for the image
                    child: Image.network(
                      video['image']!,
                      width: 140, // Make the image smaller
                      height: 80, // Make the image smaller
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10), // Space between the image and the text
                  Expanded(
                    child: Text(
                      video['title']!,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 38, 34, 34),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
