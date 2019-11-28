class Profile {
// Login:
// entrada: correo, contraseña
// salida: {token,nombrecompleto,cargo,urlForo}

  String _email;
  String _password;
  String _fullName;
  String _position;
  String _urlPhoto;

  Profile.fromJson(Map<String, dynamic> parsedJson) {
    _email = parsedJson['email'];
    _password = parsedJson['password'];
    _fullName = parsedJson['fullName'];
    _position = parsedJson['cargo'];
    _urlPhoto = parsedJson['urlFoto'];
  }

  Profile.fromParams(String email, String password, String fullName,
      String position, String urlFoto) {
    _email = email;
    _password = password;
    _fullName = fullName;
    _position = position;
    _urlPhoto = urlFoto;
  }

  String get email => _email;
  String get password => _password;
  String get fullName => _fullName;
  String get position => _position;
  String get urlFoto => _urlPhoto;
}
