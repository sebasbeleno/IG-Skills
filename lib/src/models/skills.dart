class Skill {
  int _idSkill;
  String _nombre;
  String _area;
  String _version;
  int _nivel;
  String _fecha;

  Skill.fromParams(int idSkill, String nombre, String area, String version,
      int nivel, String fecha) {
    _idSkill = idSkill;
    _nombre = nombre;
    _area = area;
    _version = version;
    _nivel = nivel;
    _fecha = fecha;
  }

  int get idSkill => _idSkill;
  String get nombre => _nombre;
  String get area => _area;
  String get version => _version;
  int get nivel => _nivel;
  String get fecha => _fecha;
}
