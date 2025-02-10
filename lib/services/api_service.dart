import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/incident_model.dart';

class ApiService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<Incident>> getIncidents() {
    return _firestore
        .collection('incidents')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Incident.fromMap(doc.data(), doc.id))
            .toList());
  }

  Future<void> reportIncident(Incident incident) async {
    await _firestore.collection('incidents').add(incident.toMap());
  }
}