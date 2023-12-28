import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final Map<String, int> candidateResults;

  ResultsScreen({required this.candidateResults});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Election Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Results:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            for (var entry in candidateResults.entries)
              ListTile(
                title: Text('${entry.key}: ${entry.value} votes'),
              ),
          ],
        ),
      ),
    );
  }
}
