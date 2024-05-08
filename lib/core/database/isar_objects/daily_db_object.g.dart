// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_db_object.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDailyObjectCollection on Isar {
  IsarCollection<DailyObject> get dailyObjects => this.collection();
}

const DailyObjectSchema = CollectionSchema(
  name: r'DailyObject',
  id: -507953803693959149,
  properties: {
    r'dateModel': PropertySchema(
      id: 0,
      name: r'dateModel',
      type: IsarType.object,
      target: r'DailyDate',
    ),
    r'expenses': PropertySchema(
      id: 1,
      name: r'expenses',
      type: IsarType.objectList,
      target: r'DailyExpenses',
    ),
    r'totalExpenses': PropertySchema(
      id: 2,
      name: r'totalExpenses',
      type: IsarType.long,
    ),
    r'totalSales': PropertySchema(
      id: 3,
      name: r'totalSales',
      type: IsarType.long,
    )
  },
  estimateSize: _dailyObjectEstimateSize,
  serialize: _dailyObjectSerialize,
  deserialize: _dailyObjectDeserialize,
  deserializeProp: _dailyObjectDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'DailyExpenses': DailyExpensesSchema,
    r'DailyDate': DailyDateSchema
  },
  getId: _dailyObjectGetId,
  getLinks: _dailyObjectGetLinks,
  attach: _dailyObjectAttach,
  version: '3.1.0+1',
);

int _dailyObjectEstimateSize(
  DailyObject object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dateModel;
    if (value != null) {
      bytesCount += 3 +
          DailyDateSchema.estimateSize(
              value, allOffsets[DailyDate]!, allOffsets);
    }
  }
  {
    final list = object.expenses;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[DailyExpenses]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              DailyExpensesSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _dailyObjectSerialize(
  DailyObject object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<DailyDate>(
    offsets[0],
    allOffsets,
    DailyDateSchema.serialize,
    object.dateModel,
  );
  writer.writeObjectList<DailyExpenses>(
    offsets[1],
    allOffsets,
    DailyExpensesSchema.serialize,
    object.expenses,
  );
  writer.writeLong(offsets[2], object.totalExpenses);
  writer.writeLong(offsets[3], object.totalSales);
}

DailyObject _dailyObjectDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DailyObject();
  object.dateModel = reader.readObjectOrNull<DailyDate>(
    offsets[0],
    DailyDateSchema.deserialize,
    allOffsets,
  );
  object.expenses = reader.readObjectList<DailyExpenses>(
    offsets[1],
    DailyExpensesSchema.deserialize,
    allOffsets,
    DailyExpenses(),
  );
  object.id = id;
  object.totalExpenses = reader.readLongOrNull(offsets[2]);
  object.totalSales = reader.readLongOrNull(offsets[3]);
  return object;
}

P _dailyObjectDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<DailyDate>(
        offset,
        DailyDateSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectList<DailyExpenses>(
        offset,
        DailyExpensesSchema.deserialize,
        allOffsets,
        DailyExpenses(),
      )) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dailyObjectGetId(DailyObject object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dailyObjectGetLinks(DailyObject object) {
  return [];
}

void _dailyObjectAttach(
    IsarCollection<dynamic> col, Id id, DailyObject object) {
  object.id = id;
}

extension DailyObjectQueryWhereSort
    on QueryBuilder<DailyObject, DailyObject, QWhere> {
  QueryBuilder<DailyObject, DailyObject, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DailyObjectQueryWhere
    on QueryBuilder<DailyObject, DailyObject, QWhereClause> {
  QueryBuilder<DailyObject, DailyObject, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DailyObjectQueryFilter
    on QueryBuilder<DailyObject, DailyObject, QFilterCondition> {
  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      dateModelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateModel',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      dateModelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateModel',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expenses',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expenses',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expenses',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expenses',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expenses',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expenses',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expenses',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      expensesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'expenses',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalExpensesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalExpenses',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalExpensesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalExpenses',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalExpensesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalExpenses',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalExpensesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalExpenses',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalExpensesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalExpenses',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalExpensesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalExpenses',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalSalesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalSales',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalSalesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalSales',
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalSalesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalSales',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalSalesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalSales',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalSalesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalSales',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition>
      totalSalesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalSales',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DailyObjectQueryObject
    on QueryBuilder<DailyObject, DailyObject, QFilterCondition> {
  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> dateModel(
      FilterQuery<DailyDate> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dateModel');
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> expensesElement(
      FilterQuery<DailyExpenses> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'expenses');
    });
  }
}

extension DailyObjectQueryLinks
    on QueryBuilder<DailyObject, DailyObject, QFilterCondition> {}

extension DailyObjectQuerySortBy
    on QueryBuilder<DailyObject, DailyObject, QSortBy> {
  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> sortByTotalExpenses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExpenses', Sort.asc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy>
      sortByTotalExpensesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExpenses', Sort.desc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> sortByTotalSales() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSales', Sort.asc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> sortByTotalSalesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSales', Sort.desc);
    });
  }
}

extension DailyObjectQuerySortThenBy
    on QueryBuilder<DailyObject, DailyObject, QSortThenBy> {
  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> thenByTotalExpenses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExpenses', Sort.asc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy>
      thenByTotalExpensesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExpenses', Sort.desc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> thenByTotalSales() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSales', Sort.asc);
    });
  }

  QueryBuilder<DailyObject, DailyObject, QAfterSortBy> thenByTotalSalesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSales', Sort.desc);
    });
  }
}

extension DailyObjectQueryWhereDistinct
    on QueryBuilder<DailyObject, DailyObject, QDistinct> {
  QueryBuilder<DailyObject, DailyObject, QDistinct> distinctByTotalExpenses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalExpenses');
    });
  }

  QueryBuilder<DailyObject, DailyObject, QDistinct> distinctByTotalSales() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalSales');
    });
  }
}

extension DailyObjectQueryProperty
    on QueryBuilder<DailyObject, DailyObject, QQueryProperty> {
  QueryBuilder<DailyObject, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DailyObject, DailyDate?, QQueryOperations> dateModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModel');
    });
  }

  QueryBuilder<DailyObject, List<DailyExpenses>?, QQueryOperations>
      expensesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expenses');
    });
  }

  QueryBuilder<DailyObject, int?, QQueryOperations> totalExpensesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalExpenses');
    });
  }

  QueryBuilder<DailyObject, int?, QQueryOperations> totalSalesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalSales');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DailyExpensesSchema = Schema(
  name: r'DailyExpenses',
  id: -7370279887077532895,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 1,
      name: r'price',
      type: IsarType.long,
    )
  },
  estimateSize: _dailyExpensesEstimateSize,
  serialize: _dailyExpensesSerialize,
  deserialize: _dailyExpensesDeserialize,
  deserializeProp: _dailyExpensesDeserializeProp,
);

int _dailyExpensesEstimateSize(
  DailyExpenses object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _dailyExpensesSerialize(
  DailyExpenses object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLong(offsets[1], object.price);
}

DailyExpenses _dailyExpensesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DailyExpenses();
  object.name = reader.readStringOrNull(offsets[0]);
  object.price = reader.readLongOrNull(offsets[1]);
  return object;
}

P _dailyExpensesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DailyExpensesQueryFilter
    on QueryBuilder<DailyExpenses, DailyExpenses, QFilterCondition> {
  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      priceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      priceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      priceEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      priceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      priceLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyExpenses, DailyExpenses, QAfterFilterCondition>
      priceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DailyExpensesQueryObject
    on QueryBuilder<DailyExpenses, DailyExpenses, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DailyDateSchema = Schema(
  name: r'DailyDate',
  id: 3330094052756746231,
  properties: {
    r'day': PropertySchema(
      id: 0,
      name: r'day',
      type: IsarType.long,
    ),
    r'hour': PropertySchema(
      id: 1,
      name: r'hour',
      type: IsarType.long,
    ),
    r'minute': PropertySchema(
      id: 2,
      name: r'minute',
      type: IsarType.long,
    ),
    r'month': PropertySchema(
      id: 3,
      name: r'month',
      type: IsarType.long,
    ),
    r'year': PropertySchema(
      id: 4,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _dailyDateEstimateSize,
  serialize: _dailyDateSerialize,
  deserialize: _dailyDateDeserialize,
  deserializeProp: _dailyDateDeserializeProp,
);

int _dailyDateEstimateSize(
  DailyDate object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _dailyDateSerialize(
  DailyDate object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.day);
  writer.writeLong(offsets[1], object.hour);
  writer.writeLong(offsets[2], object.minute);
  writer.writeLong(offsets[3], object.month);
  writer.writeLong(offsets[4], object.year);
}

DailyDate _dailyDateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DailyDate();
  object.day = reader.readLongOrNull(offsets[0]);
  object.hour = reader.readLongOrNull(offsets[1]);
  object.minute = reader.readLongOrNull(offsets[2]);
  object.month = reader.readLongOrNull(offsets[3]);
  object.year = reader.readLongOrNull(offsets[4]);
  return object;
}

P _dailyDateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DailyDateQueryFilter
    on QueryBuilder<DailyDate, DailyDate, QFilterCondition> {
  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> dayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'day',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> dayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'day',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> dayEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'day',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> dayGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'day',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> dayLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'day',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> dayBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'day',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> hourIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hour',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> hourIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hour',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> hourEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> hourGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> hourLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> hourBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> minuteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minute',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> minuteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minute',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> minuteEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minute',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> minuteGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minute',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> minuteLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minute',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> minuteBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minute',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> monthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'month',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> monthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'month',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> monthEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'month',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> monthGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'month',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> monthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'month',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> monthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'month',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> yearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'year',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> yearIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'year',
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> yearEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> yearGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> yearLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyDate, DailyDate, QAfterFilterCondition> yearBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DailyDateQueryObject
    on QueryBuilder<DailyDate, DailyDate, QFilterCondition> {}
