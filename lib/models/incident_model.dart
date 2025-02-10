class Incident {
  final String id;
  final String title;
  final String description;
  final double latitude;
  final double longitude;
  final DateTime timestamp;

  Incident({
    required this.id,
    required this.title,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.timestamp,
  });

  factory Incident.fromMap(Map<String, dynamic> data, String id) {
    return Incident(
      id: id,
      title: data['title'],
      description: data['description'],
      latitude: data['latitude'],
      longitude: data['longitude'],
      timestamp: data['timestamp'].toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'latitude': latitude,
      'longitude': longitude,
      'timestamp': timestamp,
    };
  }
}