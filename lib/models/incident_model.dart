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
}