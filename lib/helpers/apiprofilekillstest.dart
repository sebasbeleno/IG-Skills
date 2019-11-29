import 'package:ig_skills/helpers/iapibehavior.dart';
import 'package:ig_skills/src/models/profileSkills.dart';

class ApiProfileSkillsTest extends IApiBehavior<ProfileSkills> {
  Future<List<ProfileSkills>> fetchItemList() async {
    List<ProfileSkills> itemsOut = List<ProfileSkills>();
    itemsOut.add(ProfileSkills.fromParams(1, "juan@correo.com"));
    itemsOut.add(ProfileSkills.fromParams(2, "camilo@correo.com"));

    return await Future.delayed(Duration(seconds: 1), () => itemsOut);
  }
}
