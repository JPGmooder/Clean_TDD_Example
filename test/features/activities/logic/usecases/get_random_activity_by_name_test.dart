import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tddclean/features/activities/logic/entities/activity_entity.dart';
import 'package:tddclean/features/activities/logic/repositories/activity_repository.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity_by_name.dart';
import 'get_random_activity_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ActivityRepository>()])
void main() {
  late GetRandomActivityByName nameUseCase;

  late MockActivityRepository mocketRepository;
  setUp(() {
    mocketRepository = MockActivityRepository();
    nameUseCase = GetRandomActivityByName(mocketRepository, params: "Тип");
  });
  ActivityEntity? tActivity =
      ActivityEntity(name: "Имя", url: "Юрл", type: "Тип");
  test("should get random activity by name", () async {
    when(mocketRepository.getRandomActivityByType("Тип"))
        .thenAnswer((realInvocation) async {
      return Right(tActivity);
    });
    final result = await nameUseCase();
    expect(result, Right(tActivity));
    verify(mocketRepository.getRandomActivityByType("Тип"));
    verifyNoMoreInteractions(MockActivityRepository());
  });

}
