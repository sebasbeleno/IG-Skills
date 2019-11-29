import 'package:ig_skills/src/models/profile.dart';

abstract class IApiBehavior<T> {
  Future<List<T>> fetchItemList();
}
