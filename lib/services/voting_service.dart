
import 'package:cloud_firestore/cloud_firestore.dart';

class Vote {
  final String voterId;
  final List<String> selectedCandidates;

  Vote({
    required this.voterId,
    required this.selectedCandidates,
  });
}


class VotingService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Submit a vote to the database
  Future<void> submitVote(Vote vote) async {
    try {
      await _firestore.collection('votes').add({
        'voterId': vote.voterId,
        'selectedCandidates': vote.selectedCandidates,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw e;
    }
  }

  // Get the list of candidates from the database
  Future<List<String>> getCandidates() async {
    try {
      final QuerySnapshot querySnapshot = await _firestore.collection('candidates').get();
      return querySnapshot.docs.map((doc) => doc['name'] as String).toList();
    } catch (e) {
      throw e;
    }
  }
}
