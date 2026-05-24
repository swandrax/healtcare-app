import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/health_metric_entity.dart';
import '../../domain/repositories/i_health_tracker_repository.dart';

@LazySingleton(as: IHealthTrackerRepository)
class HealthTrackerRepositoryImpl implements IHealthTrackerRepository {
  @override
  Future<Either<Failure, HealthMetricEntity>> logHealthMetrics(HealthMetricEntity metric) async {
    return Right(metric);
  }

  @override
  Future<Either<Failure, List<HealthMetricEntity>>> getHealthMetrics() async {
    return const Right([]);
  }
}
