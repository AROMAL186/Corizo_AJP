import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String userEmail; // Assume you have the user's email as a property

  ProfileScreen({required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Profile:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text('Email: $userEmail'),
            // Add more user information as needed
          ],
        ),
      ),
    );
  }
}
