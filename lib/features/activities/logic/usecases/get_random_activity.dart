import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/activity_entity.dart';
import '../repositories/activity_repository.dart';

class GetRandomActivity implements UseCase<ActivityEntity, void> {
  ActivityRepository repository;
  @override
  void params;

  GetRandomActivity({
    required this.repository,
  });
  
  @override
  Future<Either<Failure, ActivityEntity>?> call() async =>
      await repository.getRandomActivity();
}
