import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/features/activities/logic/entities/activity_entity.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  late ActivityModel tModel;

  setUp(() {
    tModel = ActivityModel(
        name: "Test activity name",
        url: "Test activity link",
        type: "Test activity type");
  });

  test("should be subclass of ActivityEntity entity", () {
    expect(tModel, isA<ActivityEntity>());
  });

  group('model json encoding', () {
    test("should return valid activity when is allright", () async {
      final Map<String, dynamic> jsonMap = jsonDecode(fixture("activity.json"));

      final result = ActivityModel.fromJson(jsonMap);

      expect(result, tModel);
    });

    test("should encode model to correct json", () {
      final Map<String, dynamic> correctJson =
          jsonDecode(fixture("activity.json"));
      final result = tModel.toJson();
      expect(correctJson, result);
    });
  });
}
