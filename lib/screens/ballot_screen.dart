import 'package:flutter/material.dart';

class BallotScreen extends StatefulWidget {
  @override
  _BallotScreenState createState() => _BallotScreenState();
}

class _BallotScreenState extends State<BallotScreen> {
  List<String> candidates = [
    'Candidate A',
    'Candidate B',
    'Candidate C',
    // Add more candidates as needed
  ];

  List<String> selectedCandidates = [];

  void _toggleCandidate(String candidate) {
    setState(() {
      if (selectedCandidates.contains(candidate)) {
        selectedCandidates.remove(candidate);
      } else {
        selectedCandidates.add(candidate);
      }
    });
  }

  void _submitBallot() {
    // Implement logic to submit the selected candidates
    // For example, you might want to save the choices to a database
    // or send them to a server.
    print('Selected Candidates: $selectedCandidates');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ballot'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select your candidates:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            for (String candidate in candidates)
              ListTile(
                title: Text(candidate),
                onTap: () => _toggleCandidate(candidate),
                leading: Icon(
                  selectedCandidates.contains(candidate)
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                ),
              ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitBallot,
              child: Text('Submit Ballot'),
            ),
          ],
        ),
      ),
    );
  }
}
