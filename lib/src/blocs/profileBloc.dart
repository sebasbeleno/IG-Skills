import 'package:ig_skills/helpers/apitest.dart';
import 'package:ig_skills/helpers/repository.dart';
import 'package:ig_skills/src/models/profile.dart';
import 'package:rxdart/rxdart.dart';

class ProfileBloc {
  final _repository = Repository.fromApi(ApiTest());
  final _itemsFetcher = PublishSubject<List<Profile>>();

  Observable<List<Profile>> get allItems => _itemsFetcher.stream;

  getAllItems() async {
    List<Profile> items = await _repository.getAllItems();
    _itemsFetcher.sink.add(items);
  }

  // List<Profile> getAllItemsList() {
  //   List<Profile> items = _repository.getAllItems();
  //   return items;
  // }

  dispose() {
    _itemsFetcher.close();
  }
}

final profilebloc = ProfileBloc();
