import 'package:ig_skills/helpers/apiprofilekillstest.dart';
import 'package:ig_skills/helpers/repository.dart';
import 'package:ig_skills/src/models/profileSkills.dart';
import 'package:rxdart/rxdart.dart';

class ProfileSkillsBloc {
  final _repository = Repository.fromApiProfileSkills(ApiProfileSkillsTest());
  final _itemsFetcher = PublishSubject<List<ProfileSkills>>();

  Observable<List<ProfileSkills>> get allItems => _itemsFetcher.stream;

  getAllItems() async {
    List<ProfileSkills> items =
        (await _repository.getAllItems()).cast<ProfileSkills>();
    _itemsFetcher.sink.add(items);
  }

  dispose() {
    _itemsFetcher.close();
  }
}

final profileSkillsBloc = ProfileSkillsBloc();
