import 'package:ig_skills/src/models/profile.dart';
import 'iapibehavior.dart';

class ApiTest implements IApiBehavior<Profile> {
  Future<List<Profile>> fetchItemList() async {
    List<Profile> itemsOut = List<Profile>();
    itemsOut.add(Profile.fromParams("juan@correo.com", "juan123", "Juan Mesa",
        "Gerente", "https://i-love-png.com/images/profile_png_1113533.png", 1));

    itemsOut.add(Profile.fromParams(
        "camilo@correo.com",
        "camilo123",
        "Camilo Mora",
        "Director",
        "https://i-love-png.com/images/profile_png_1113533.png",
        3));

    itemsOut.add(Profile.fromParams(
        "liliana@correo.com",
        "liliana123",
        "Liliana Montoya",
        "Supervisor",
        "https://i-love-png.com/images/profile_png_1113533.png",
        3));

    return await Future.delayed(Duration(seconds: 4), () => itemsOut);
  }
}
