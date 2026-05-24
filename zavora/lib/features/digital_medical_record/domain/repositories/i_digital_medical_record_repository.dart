import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/digital_medical_record_entity.dart';

abstract class IDigitalMedicalRecordRepository {
  Future<Either<Failure, List<DigitalMedicalRecordEntity>>> getMedicalRecords(String userId);
  Future<Either<Failure, DigitalMedicalRecordEntity>> saveMedicalRecord(DigitalMedicalRecordEntity record, List<int> key);
  Future<Either<Failure, Unit>> syncOfflineRecords(List<int> key);
}
