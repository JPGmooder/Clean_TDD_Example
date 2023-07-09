import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/activity_entity.dart';

import '../repositories/activity_repository.dart';

class GetRandomActivityByName implements UseCase<ActivityEntity, String> {
  final ActivityRepository repository;
  @override
  String params;
  GetRandomActivityByName(this.repository, {required this.params});
  @override
  Future<Either<Failure, ActivityEntity>?> call() async =>
      await repository.getRandomActivityByType(params);
}
