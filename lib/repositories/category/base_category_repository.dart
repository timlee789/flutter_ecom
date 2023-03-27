import '../../models/models.dart';

abstract class BaseCategoyRepository {
  Stream<List<Category>> getAllCategories();
}
