// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_metric_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetHealthMetricDtoCollection on Isar {
  IsarCollection<HealthMetricDto> get healthMetricDtos => this.collection();
}

const HealthMetricDtoSchema = CollectionSchema(
  name: r'HealthMetricDto',
  id: 4703836999588276751,
  properties: {
    r'bmi': PropertySchema(
      id: 0,
      name: r'bmi',
      type: IsarType.double,
    ),
    r'calorieLog': PropertySchema(
      id: 1,
      name: r'calorieLog',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'hydrationLiters': PropertySchema(
      id: 3,
      name: r'hydrationLiters',
      type: IsarType.double,
    ),
    r'isSynced': PropertySchema(
      id: 4,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'supabaseUuid': PropertySchema(
      id: 5,
      name: r'supabaseUuid',
      type: IsarType.string,
    )
  },
  estimateSize: _healthMetricDtoEstimateSize,
  serialize: _healthMetricDtoSerialize,
  deserialize: _healthMetricDtoDeserialize,
  deserializeProp: _healthMetricDtoDeserializeProp,
  idName: r'id',
  indexes: {
    r'supabaseUuid': IndexSchema(
      id: -6458530596362671080,
      name: r'supabaseUuid',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'supabaseUuid',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'isSynced': IndexSchema(
      id: -39763503327887510,
      name: r'isSynced',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isSynced',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _healthMetricDtoGetId,
  getLinks: _healthMetricDtoGetLinks,
  attach: _healthMetricDtoAttach,
  version: '3.1.0+1',
);

int _healthMetricDtoEstimateSize(
  HealthMetricDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.supabaseUuid.length * 3;
  return bytesCount;
}

void _healthMetricDtoSerialize(
  HealthMetricDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.bmi);
  writer.writeLong(offsets[1], object.calorieLog);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeDouble(offsets[3], object.hydrationLiters);
  writer.writeBool(offsets[4], object.isSynced);
  writer.writeString(offsets[5], object.supabaseUuid);
}

HealthMetricDto _healthMetricDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HealthMetricDto();
  object.bmi = reader.readDouble(offsets[0]);
  object.calorieLog = reader.readLong(offsets[1]);
  object.createdAt = reader.readDateTime(offsets[2]);
  object.hydrationLiters = reader.readDouble(offsets[3]);
  object.id = id;
  object.isSynced = reader.readBool(offsets[4]);
  object.supabaseUuid = reader.readString(offsets[5]);
  return object;
}

P _healthMetricDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _healthMetricDtoGetId(HealthMetricDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _healthMetricDtoGetLinks(HealthMetricDto object) {
  return [];
}

void _healthMetricDtoAttach(
    IsarCollection<dynamic> col, Id id, HealthMetricDto object) {
  object.id = id;
}

extension HealthMetricDtoByIndex on IsarCollection<HealthMetricDto> {
  Future<HealthMetricDto?> getBySupabaseUuid(String supabaseUuid) {
    return getByIndex(r'supabaseUuid', [supabaseUuid]);
  }

  HealthMetricDto? getBySupabaseUuidSync(String supabaseUuid) {
    return getByIndexSync(r'supabaseUuid', [supabaseUuid]);
  }

  Future<bool> deleteBySupabaseUuid(String supabaseUuid) {
    return deleteByIndex(r'supabaseUuid', [supabaseUuid]);
  }

  bool deleteBySupabaseUuidSync(String supabaseUuid) {
    return deleteByIndexSync(r'supabaseUuid', [supabaseUuid]);
  }

  Future<List<HealthMetricDto?>> getAllBySupabaseUuid(
      List<String> supabaseUuidValues) {
    final values = supabaseUuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'supabaseUuid', values);
  }

  List<HealthMetricDto?> getAllBySupabaseUuidSync(
      List<String> supabaseUuidValues) {
    final values = supabaseUuidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'supabaseUuid', values);
  }

  Future<int> deleteAllBySupabaseUuid(List<String> supabaseUuidValues) {
    final values = supabaseUuidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'supabaseUuid', values);
  }

  int deleteAllBySupabaseUuidSync(List<String> supabaseUuidValues) {
    final values = supabaseUuidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'supabaseUuid', values);
  }

  Future<Id> putBySupabaseUuid(HealthMetricDto object) {
    return putByIndex(r'supabaseUuid', object);
  }

  Id putBySupabaseUuidSync(HealthMetricDto object, {bool saveLinks = true}) {
    return putByIndexSync(r'supabaseUuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySupabaseUuid(List<HealthMetricDto> objects) {
    return putAllByIndex(r'supabaseUuid', objects);
  }

  List<Id> putAllBySupabaseUuidSync(List<HealthMetricDto> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'supabaseUuid', objects, saveLinks: saveLinks);
  }
}

extension HealthMetricDtoQueryWhereSort
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QWhere> {
  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhere> anyIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isSynced'),
      );
    });
  }
}

extension HealthMetricDtoQueryWhere
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QWhereClause> {
  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause> idBetween(
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

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause>
      supabaseUuidEqualTo(String supabaseUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'supabaseUuid',
        value: [supabaseUuid],
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause>
      supabaseUuidNotEqualTo(String supabaseUuid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'supabaseUuid',
              lower: [],
              upper: [supabaseUuid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'supabaseUuid',
              lower: [supabaseUuid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'supabaseUuid',
              lower: [supabaseUuid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'supabaseUuid',
              lower: [],
              upper: [supabaseUuid],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause>
      isSyncedEqualTo(bool isSynced) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isSynced',
        value: [isSynced],
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterWhereClause>
      isSyncedNotEqualTo(bool isSynced) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isSynced',
              lower: [],
              upper: [isSynced],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isSynced',
              lower: [isSynced],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isSynced',
              lower: [isSynced],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isSynced',
              lower: [],
              upper: [isSynced],
              includeUpper: false,
            ));
      }
    });
  }
}

extension HealthMetricDtoQueryFilter
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QFilterCondition> {
  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      bmiEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bmi',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      bmiGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bmi',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      bmiLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bmi',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      bmiBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bmi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      calorieLogEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calorieLog',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      calorieLogGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calorieLog',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      calorieLogLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calorieLog',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      calorieLogBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calorieLog',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      hydrationLitersEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hydrationLiters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      hydrationLitersGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hydrationLiters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      hydrationLitersLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hydrationLiters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      hydrationLitersBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hydrationLiters',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      isSyncedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'supabaseUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'supabaseUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'supabaseUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'supabaseUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'supabaseUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supabaseUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supabaseUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterFilterCondition>
      supabaseUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }
}

extension HealthMetricDtoQueryObject
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QFilterCondition> {}

extension HealthMetricDtoQueryLinks
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QFilterCondition> {}

extension HealthMetricDtoQuerySortBy
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QSortBy> {
  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy> sortByBmi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy> sortByBmiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByCalorieLog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorieLog', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByCalorieLogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorieLog', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByHydrationLiters() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hydrationLiters', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByHydrationLitersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hydrationLiters', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      sortBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }
}

extension HealthMetricDtoQuerySortThenBy
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QSortThenBy> {
  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy> thenByBmi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy> thenByBmiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bmi', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByCalorieLog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorieLog', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByCalorieLogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorieLog', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByHydrationLiters() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hydrationLiters', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByHydrationLitersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hydrationLiters', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QAfterSortBy>
      thenBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }
}

extension HealthMetricDtoQueryWhereDistinct
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QDistinct> {
  QueryBuilder<HealthMetricDto, HealthMetricDto, QDistinct> distinctByBmi() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bmi');
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QDistinct>
      distinctByCalorieLog() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calorieLog');
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QDistinct>
      distinctByHydrationLiters() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hydrationLiters');
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QDistinct>
      distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<HealthMetricDto, HealthMetricDto, QDistinct>
      distinctBySupabaseUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supabaseUuid', caseSensitive: caseSensitive);
    });
  }
}

extension HealthMetricDtoQueryProperty
    on QueryBuilder<HealthMetricDto, HealthMetricDto, QQueryProperty> {
  QueryBuilder<HealthMetricDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<HealthMetricDto, double, QQueryOperations> bmiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bmi');
    });
  }

  QueryBuilder<HealthMetricDto, int, QQueryOperations> calorieLogProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calorieLog');
    });
  }

  QueryBuilder<HealthMetricDto, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<HealthMetricDto, double, QQueryOperations>
      hydrationLitersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hydrationLiters');
    });
  }

  QueryBuilder<HealthMetricDto, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<HealthMetricDto, String, QQueryOperations>
      supabaseUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supabaseUuid');
    });
  }
}
