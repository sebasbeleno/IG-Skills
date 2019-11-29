import 'package:ig_skills/src/models/skills.dart';
import 'iapibehavior.dart';

class ApiSkillTest implements IApiBehavior<Skill> {
  Future<List<Skill>> fetchItemList() async {
    List<Skill> itemsOut = List<Skill>();

    itemsOut
        .add(Skill.fromParams(1, "Java", "Develop", "1.0.1", 3, "2019-11-11"));
    itemsOut.add(
        Skill.fromParams(1, "Flutter", "Develop", "1.0.1", 2, "2019-11-11"));
    itemsOut
        .add(Skill.fromParams(1, "Dart", "Develop", "1.0.1", 3, "2019-11-11"));
    itemsOut
        .add(Skill.fromParams(1, "C#", "Develop", "1.0.1", 1, "2019-11-11"));

    return await Future.delayed(Duration(seconds: 1), () => itemsOut);
  }
}
