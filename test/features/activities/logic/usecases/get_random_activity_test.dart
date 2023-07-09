import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tddclean/features/activities/logic/entities/activity_entity.dart';
import 'package:tddclean/features/activities/logic/repositories/activity_repository.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity.dart';
import 'get_random_activity_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ActivityRepository>()])
void main() {
  late GetRandomActivity randomUseCase;

  late MockActivityRepository mocketRepository;

  
  setUp(() {
    mocketRepository = MockActivityRepository();
    randomUseCase = GetRandomActivity(repository: mocketRepository);
  });
  ActivityEntity? tActivity =
      ActivityEntity(name: "Имя", url: "Юрл", type: "Тип");

  test("should get random activity", () async {
    when(mocketRepository.getRandomActivity())
        .thenAnswer((realInvocation) async {
      return Right(tActivity);
    });
    final result = await randomUseCase();
    expect(result, Right(tActivity));
    verifyNoMoreInteractions(MockActivityRepository());
  });
}
