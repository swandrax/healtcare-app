import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/i_digital_medical_record_repository.dart';

@lazySingleton
class SyncOfflineEmrUseCase {
  final IDigitalMedicalRecordRepository repository;

  SyncOfflineEmrUseCase(this.repository);

  Future<Either<Failure, Unit>> call(List<int> encryptionKey) {
    return repository.syncOfflineRecords(encryptionKey);
  }
}
