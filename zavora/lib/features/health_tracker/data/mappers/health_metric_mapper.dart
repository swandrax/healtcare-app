import '../../domain/entities/health_metric_entity.dart';
import '../models/health_metric_dto.dart';

extension HealthMetricDtoMapper on HealthMetricDto {
  HealthMetricEntity toEntity() => HealthMetricEntity(
        id: supabaseUuid,
        bmi: bmi,
        calorieLog: calorieLog,
        hydrationLiters: hydrationLiters,
        createdAt: createdAt,
        isSynced: isSynced,
      );
}

extension HealthMetricEntityMapper on HealthMetricEntity {
  HealthMetricDto toDto() => HealthMetricDto()
    ..supabaseUuid = id
    ..bmi = bmi
    ..calorieLog = calorieLog
    ..hydrationLiters = hydrationLiters
    ..createdAt = createdAt
    ..isSynced = isSynced;
}
