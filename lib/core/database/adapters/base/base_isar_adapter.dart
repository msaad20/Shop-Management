import 'package:shop_management/core/database/adapters/base/base_db_adapter.dart';
import 'package:shop_management/core/database/isar_objects/daily_db_object.dart';
import 'package:shop_management/core/database/models/base_db_list_model.dart';
import 'package:shop_management/core/models/base_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shop_management/core/models/daily_model.dart';

//FIXME: currently all the items are opened here
// every item should be assigned from that class
abstract class BaseIsarAdapter<T, P extends BaseModel>
    extends BaseDbAdapter<P> {

  static Isar? _isar;
  Isar get isar => _isar!;
  IsarCollection<T> get isarCollection;
  static initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [DailyObjectSchema],
      directory: dir.path,
    );
  }

  Future<void> close() async {
    await isar.close();
  }

  P objectTransformer(T object, [Map<String, dynamic>? params]);
  Future<List<P>> itemsTransformer(List<T> object,
      [Map<String, dynamic>? params]);
  T objectConstructor(P object, [Map<String, dynamic>? params]);

  QueryBuilder<T, T, QAfterFilterCondition> buildQuery(
      {Map<String, dynamic>? params});

  @override
  Future<BaseDbListModel<P>> fetchAll({Map<String, dynamic>? params}) async {
    List<T> objects;
    QueryBuilder<T, T, QAfterFilterCondition>? queryBuilder =
        buildQuery(params: params);
    if (queryBuilder != null) {
      objects = await queryBuilder.findAll();
    } else {
      //FIXME: FETCH ALL THE ITEMS
      objects = await queryBuilder.findAll();
      //  objects =await isarCollection.getAll([1,]);
    }
    List<P> docs = await itemsTransformer(objects);
    return BaseDbListModel(list: docs);
  }

  @override
  Future<P?> fetchOne({required int id, Map<String, dynamic>? params}) async {
    T? object = await isarCollection.get(id);
    if (object != null) {
      objectTransformer(object);
    }
    return null;
  }

  @override
  Future<P?> delete(
      {required int id, Map<String, dynamic> params = const {}}) async {
    await isarCollection.delete(id);
    return null;
  }

  @override
  Future<P?> set(
      {required P body, Map<String, dynamic> params = const {}}) async {
    T constructed = await objectConstructor(body);
    isarCollection.putSync(
      constructed,
    );
    return body;
  }

  @override
  Future<P?> create(
      {required P body, Map<String, dynamic> params = const {}}) async {
    T constructed = await objectConstructor(body);
    isarCollection.putSync(
      constructed,
    );
    return body;
  }

  @override
  Future<P?> update(
      {required int id,
      required P body,
      Map<String, dynamic> params = const {}}) async {
    T constructed = await objectConstructor(body);
    isarCollection.putSync(
      constructed,
    );
    return body;
  }
}
