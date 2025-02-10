import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/incident_model.dart';

class ApiService {
  final String baseUrl = "https://api.safepath.ke"; // Replace with your API URL

  Future<List<Incident>> fetchIncidents() async {
    final response = await http.get(Uri.parse('$baseUrl/incidents'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((incident) => Incident.fromJson(incident)).toList();
    } else {
      throw Exception('Failed to load incidents');
    }
  }
}