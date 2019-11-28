class Profile {
// Login:
// entrada: correo, contraseña
// salida: {token,nombrecompleto,cargo,urlForo}

  String _email;
  String _password;
  String _fullName;
  String _position;
  String _urlPhoto;
  int _level;

  Profile.fromJson(Map<String, dynamic> parsedJson) {
    _email = parsedJson['email'];
    _password = parsedJson['password'];
    _fullName = parsedJson['fullName'];
    _position = parsedJson['cargo'];
    _urlPhoto = parsedJson['urlFoto'];
    _level = parsedJson['level'];
  }

  Profile.fromParams(String email, String password, String fullName,
      String position, String urlFoto, int level) {
    _email = email;
    _password = password;
    _fullName = fullName;
    _position = position;
    _urlPhoto = urlFoto;
    _level = level;
  }

  String get email => _email;
  String get password => _password;
  String get fullName => _fullName;
  String get position => _position;
  String get urlFoto => _urlPhoto;
  int get level => _level;
}
