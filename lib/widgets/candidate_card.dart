import 'package:flutter/material.dart';

class CandidateCard extends StatelessWidget {
  final String candidateName;
  final String partyName;

  CandidateCard({required this.candidateName, required this.partyName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(candidateName),
        subtitle: Text('Party: $partyName'),
        // You can add more information about the candidate if needed
        // For example, their photo, a brief description, etc.
      ),
    );
  }
}
