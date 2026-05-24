class HealthMetricEntity {
  final String id;
  final double bmi;
  final int calorieLog;
  final double hydrationLiters;
  final DateTime createdAt;
  final bool isSynced;

  const HealthMetricEntity({
    required this.id,
    required this.bmi,
    required this.calorieLog,
    required this.hydrationLiters,
    required this.createdAt,
    this.isSynced = true,
  });
}
