import 'package:ig_skills/helpers/apiskilltest.dart';

import 'package:ig_skills/helpers/repository.dart';
import 'package:ig_skills/src/models/skills.dart';
import 'package:rxdart/rxdart.dart';

class SkillBloc {
  final _repository = Repository.fromApiS(ApiSkillTest());
  final _itemsFetcher = PublishSubject<List<Skill>>();

  Observable<List<Skill>> get allItems => _itemsFetcher.stream;

  getAllItems() async {
    List<Skill> items = await _repository.getAllSkills();

    _itemsFetcher.sink.add(items);
  }


  sendSkill(area, level, technology, version) async {
    List<Skill> items = await _repository.getAllSkills();


    print(items[0].area);

    
    items.add(Skill.fromParams(2, "Sebas", area, version, 2, "187117201"));

    print(items.length);

    
  }

  dispose() {
    _itemsFetcher.close();
  }
}

final skillBloc = SkillBloc();
