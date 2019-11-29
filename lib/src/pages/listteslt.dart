import 'package:ig_skills/src/models/profile.dart';
import 'package:ig_skills/src/models/profileSkills.dart';
import 'package:ig_skills/src/models/skills.dart';

class ListTest {
  List<Profile> p;
  List<Skill> s;
  List<ProfileSkills> ps;

  ListTest() {
    p.add(Profile.fromParams(
        "email", "password", "fullName", "position", "urlFoto", 1));
    s.add(Skill.fromParams(1, "nombre", "area", "version", 3, "fecha"));
    ps.add(ProfileSkills.fromParams(1, "email"));
  }

  void impri() {
    print("abs");
  }
}
