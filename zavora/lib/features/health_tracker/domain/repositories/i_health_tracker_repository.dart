import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/health_metric_entity.dart';

abstract class IHealthTrackerRepository {
  Future<Either<Failure, HealthMetricEntity>> logHealthMetrics(HealthMetricEntity metric);
  Future<Either<Failure, List<HealthMetricEntity>>> getHealthMetrics();
}
