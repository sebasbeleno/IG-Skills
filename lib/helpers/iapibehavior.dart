abstract class IApiBehavior<T> {
  Future<List<T>> fetchItemList();
}
