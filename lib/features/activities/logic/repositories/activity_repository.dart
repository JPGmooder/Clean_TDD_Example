import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/activity_entity.dart';



abstract class ActivityRepository {
  Future<Either<Failure, ActivityEntity>>? getRandomActivity();
  Future<Either<Failure, ActivityEntity>>? getRandomActivityByType(String type);
}
