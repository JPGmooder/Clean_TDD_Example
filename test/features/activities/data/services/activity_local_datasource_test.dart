import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:tddclean/core/error/exceptions.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/features/activities/data/services/activity_local_datasource.dart';
import 'package:tddclean/features/activities/logic/entities/activity_entity.dart';
import 'activity_local_datasource_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Box>()])
void main() {
  late MockBox<ActivityModel> hiveBox;
  late ActivityLocalDataSourceImpl localDataSource;

  setUp(() {
    hiveBox = MockBox<ActivityModel>();
    localDataSource = ActivityLocalDataSourceImpl(box: hiveBox);
  });
  var tActivity = ActivityModel(name: "Чилл", url: 'chill.com', type: "Chill");

  group("Local storage", () {
    test("should return last activity", () async {
      when(hiveBox.values.last).thenReturn(tActivity);
      var result = await localDataSource.getLastActivity();
      expect(result, tActivity);
    });

    test("should throw cacheException when is no cache value", () async {
      when(hiveBox.isEmpty).thenReturn(true);
      var call = () => localDataSource.getLastActivity();
      expect(call(), throwsA(TypeMatcher<CacheException>()));
    });
  });
  group("Cache data.", () {
    test("should call box.add when cache data", () {
      localDataSource.cacheActivity(tActivity);
      verify(hiveBox.add(tActivity)).called(1);
    });
  });
}
