import 'package:ig_skills/src/models/profile.dart';

import 'apitest.dart';
import 'iapibehavior.dart';

class Repository {
  IApiBehavior<Profile> api;

  Repository() {
    api = ApiTest();
    // api = ApiTest();
  }

  Repository.fromApi(this.api);

  Future<List<Profile>> getAllItems() {
    return api.fetchItemList();
  }
}
