import 'package:isar/isar.dart';

part 'health_metric_dto.g.dart';

@collection
class HealthMetricDto {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String supabaseUuid;

  late double bmi;
  late int calorieLog;
  late double hydrationLiters;
  late DateTime createdAt;

  @Index()
  late bool isSynced;
}
