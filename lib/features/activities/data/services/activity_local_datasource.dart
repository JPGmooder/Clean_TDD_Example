import 'package:hive/hive.dart';

import '../../../../core/error/exceptions.dart';
import '../models/activity_model.dart';

abstract class ActivityLocalDataSource {
  ///Gets a last [ActivityModel] from hive retrivied by client from server, when internet connection was stable
  ///
  ///Throws [CacheException] if there were'nt any of cached [ActivityModel]'s
  Future<ActivityModel>? getLastActivity();
  Future<void> cacheActivity(ActivityModel activityToCache);
}

class ActivityLocalDataSourceImpl implements ActivityLocalDataSource {
  Box<ActivityModel> box;
  ActivityLocalDataSourceImpl({required this.box});
  @override
  Future<void> cacheActivity(ActivityModel activityToCache) async {
   await box.add(activityToCache);
  }

  @override
  Future<ActivityModel>? getLastActivity() async {
    if (box.isEmpty) {
      throw CacheException();
    }
    return box.values.last;
  }
}
