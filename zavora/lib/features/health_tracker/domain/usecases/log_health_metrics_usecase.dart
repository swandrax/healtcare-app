import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/health_metric_entity.dart';
import '../repositories/i_health_tracker_repository.dart';

@lazySingleton
class LogHealthMetricsUseCase {
  final IHealthTrackerRepository repository;

  LogHealthMetricsUseCase(this.repository);

  Future<Either<Failure, HealthMetricEntity>> call(HealthMetricEntity metric) {
    return repository.logHealthMetrics(metric);
  }
}
