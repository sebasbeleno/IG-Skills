import 'package:ig_skills/src/models/profile.dart';
import 'package:ig_skills/src/models/profileSkills.dart';
import 'package:ig_skills/src/models/skills.dart';

import 'apiprofilekillstest.dart';
import 'apiskilltest.dart';
import 'apitest.dart';
import 'iapibehavior.dart';

class Repository {
  IApiBehavior<Profile> apiProfile;
  IApiBehavior<Skill> apiSkill;
  IApiBehavior<ProfileSkills> apiProfileSkills;

  Repository() {
    apiProfile = ApiTest();
    apiSkill = ApiSkillTest();
    apiProfileSkills = ApiProfileSkillsTest() as IApiBehavior<ProfileSkills>;
    // api = ApiTest();
  }

  Repository.fromApi(this.apiProfile);
  Repository.fromApiS(this.apiSkill);
  Repository.fromApiProfileSkills(this.apiProfileSkills);

  Future<List<Profile>> getAllItems() {
    return apiProfile.fetchItemList();
  }

  Future<List<Skill>> getAllSkills() {
    return apiSkill.fetchItemList();
  }

  Future<List<ProfileSkills>> getAllProfileSkills() {
    return apiProfileSkills.fetchItemList();
  }
}
