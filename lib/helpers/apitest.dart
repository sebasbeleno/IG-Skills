import 'package:ig_skills/src/models/profile.dart';
import 'iapibehavior.dart';

class ApiTest implements IApiBehavior<Profile> {
  Future<List<Profile>> fetchItemList() async {
    List<Profile> itemsOut = List<Profile>();
    itemsOut.add(Profile.fromParams(
        "juan@correo.com",
        "juan123",
        "Juan Mesa",
        "Gerente",
        "http://www.lte-esafety.co.uk/wp-content/uploads/2015/06/avatar.png"));

    itemsOut.add(Profile.fromParams(
        "camilo@correo.com",
        "camilo123",
        "Camilo Mora",
        "Director",
        "http://www.lte-esafety.co.uk/wp-content/uploads/2015/06/avatar.png"));

    itemsOut.add(Profile.fromParams(
        "liliana@correo.com",
        "liliana123",
        "Liliana Montoya",
        "Supervisor",
        "http://www.lte-esafety.co.uk/wp-content/uploads/2015/06/avatar.png"));

    return await Future.delayed(Duration(seconds: 4), () => itemsOut);
  }
}
