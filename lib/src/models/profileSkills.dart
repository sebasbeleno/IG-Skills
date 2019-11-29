class ProfileSkills {
  int _idSkill;
  String _emailProfile;

  ProfileSkills.fromParams(int idSkill, String emailProfile) {
    _idSkill = idSkill;
    _emailProfile = emailProfile;
  }

  int get idSkill => _idSkill;
  String get emailProfile => _emailProfile;
}
