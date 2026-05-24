// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mental_wellness_journal_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMentalWellnessJournalDtoCollection on Isar {
  IsarCollection<MentalWellnessJournalDto> get mentalWellnessJournalDtos =>
      this.collection();
}

const MentalWellnessJournalDtoSchema = CollectionSchema(
  name: r'MentalWellnessJournalDto',
  id: -1842661759030348907,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'encryptedJournalText': PropertySchema(
      id: 1,
      name: r'encryptedJournalText',
      type: IsarType.string,
    ),
    r'isSynced': PropertySchema(
      id: 2,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'supabaseUuid': PropertySchema(
      id: 3,
      name: r'supabaseUuid',
      type: IsarType.string,
    ),
    r'wellnessScore': PropertySchema(
      id: 4,
      name: r'wellnessScore',
      type: IsarType.long,
    )
  },
  estimateSize: _mentalWellnessJournalDtoEstimateSize,
  serialize: _mentalWellnessJournalDtoSerialize,
  deserialize: _mentalWellnessJournalDtoDeserialize,
  deserializeProp: _mentalWellnessJournalDtoDeserializeProp,
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
  getId: _mentalWellnessJournalDtoGetId,
  getLinks: _mentalWellnessJournalDtoGetLinks,
  attach: _mentalWellnessJournalDtoAttach,
  version: '3.1.0+1',
);

int _mentalWellnessJournalDtoEstimateSize(
  MentalWellnessJournalDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.encryptedJournalText.length * 3;
  bytesCount += 3 + object.supabaseUuid.length * 3;
  return bytesCount;
}

void _mentalWellnessJournalDtoSerialize(
  MentalWellnessJournalDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.encryptedJournalText);
  writer.writeBool(offsets[2], object.isSynced);
  writer.writeString(offsets[3], object.supabaseUuid);
  writer.writeLong(offsets[4], object.wellnessScore);
}

MentalWellnessJournalDto _mentalWellnessJournalDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MentalWellnessJournalDto();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.encryptedJournalText = reader.readString(offsets[1]);
  object.id = id;
  object.isSynced = reader.readBool(offsets[2]);
  object.supabaseUuid = reader.readString(offsets[3]);
  object.wellnessScore = reader.readLong(offsets[4]);
  return object;
}

P _mentalWellnessJournalDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mentalWellnessJournalDtoGetId(MentalWellnessJournalDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mentalWellnessJournalDtoGetLinks(
    MentalWellnessJournalDto object) {
  return [];
}

void _mentalWellnessJournalDtoAttach(
    IsarCollection<dynamic> col, Id id, MentalWellnessJournalDto object) {
  object.id = id;
}

extension MentalWellnessJournalDtoByIndex
    on IsarCollection<MentalWellnessJournalDto> {
  Future<MentalWellnessJournalDto?> getBySupabaseUuid(String supabaseUuid) {
    return getByIndex(r'supabaseUuid', [supabaseUuid]);
  }

  MentalWellnessJournalDto? getBySupabaseUuidSync(String supabaseUuid) {
    return getByIndexSync(r'supabaseUuid', [supabaseUuid]);
  }

  Future<bool> deleteBySupabaseUuid(String supabaseUuid) {
    return deleteByIndex(r'supabaseUuid', [supabaseUuid]);
  }

  bool deleteBySupabaseUuidSync(String supabaseUuid) {
    return deleteByIndexSync(r'supabaseUuid', [supabaseUuid]);
  }

  Future<List<MentalWellnessJournalDto?>> getAllBySupabaseUuid(
      List<String> supabaseUuidValues) {
    final values = supabaseUuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'supabaseUuid', values);
  }

  List<MentalWellnessJournalDto?> getAllBySupabaseUuidSync(
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

  Future<Id> putBySupabaseUuid(MentalWellnessJournalDto object) {
    return putByIndex(r'supabaseUuid', object);
  }

  Id putBySupabaseUuidSync(MentalWellnessJournalDto object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'supabaseUuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySupabaseUuid(
      List<MentalWellnessJournalDto> objects) {
    return putAllByIndex(r'supabaseUuid', objects);
  }

  List<Id> putAllBySupabaseUuidSync(List<MentalWellnessJournalDto> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'supabaseUuid', objects, saveLinks: saveLinks);
  }
}

extension MentalWellnessJournalDtoQueryWhereSort on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QWhere> {
  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterWhere>
      anyIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isSynced'),
      );
    });
  }
}

extension MentalWellnessJournalDtoQueryWhere on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QWhereClause> {
  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> idBetween(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> supabaseUuidEqualTo(String supabaseUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'supabaseUuid',
        value: [supabaseUuid],
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> supabaseUuidNotEqualTo(String supabaseUuid) {
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> isSyncedEqualTo(bool isSynced) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isSynced',
        value: [isSynced],
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterWhereClause> isSyncedNotEqualTo(bool isSynced) {
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

extension MentalWellnessJournalDtoQueryFilter on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QFilterCondition> {
  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encryptedJournalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'encryptedJournalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'encryptedJournalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'encryptedJournalText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'encryptedJournalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'encryptedJournalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
          QAfterFilterCondition>
      encryptedJournalTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'encryptedJournalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
          QAfterFilterCondition>
      encryptedJournalTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'encryptedJournalText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encryptedJournalText',
        value: '',
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> encryptedJournalTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'encryptedJournalText',
        value: '',
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> isSyncedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidEqualTo(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidGreaterThan(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidLessThan(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidBetween(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidStartsWith(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidEndsWith(
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

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
          QAfterFilterCondition>
      supabaseUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supabaseUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
          QAfterFilterCondition>
      supabaseUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supabaseUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> supabaseUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> wellnessScoreEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wellnessScore',
        value: value,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> wellnessScoreGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wellnessScore',
        value: value,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> wellnessScoreLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wellnessScore',
        value: value,
      ));
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto,
      QAfterFilterCondition> wellnessScoreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wellnessScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MentalWellnessJournalDtoQueryObject on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QFilterCondition> {}

extension MentalWellnessJournalDtoQueryLinks on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QFilterCondition> {}

extension MentalWellnessJournalDtoQuerySortBy on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QSortBy> {
  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByEncryptedJournalText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptedJournalText', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByEncryptedJournalTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptedJournalText', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByWellnessScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wellnessScore', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      sortByWellnessScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wellnessScore', Sort.desc);
    });
  }
}

extension MentalWellnessJournalDtoQuerySortThenBy on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QSortThenBy> {
  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByEncryptedJournalText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptedJournalText', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByEncryptedJournalTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encryptedJournalText', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByWellnessScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wellnessScore', Sort.asc);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QAfterSortBy>
      thenByWellnessScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wellnessScore', Sort.desc);
    });
  }
}

extension MentalWellnessJournalDtoQueryWhereDistinct on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QDistinct> {
  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QDistinct>
      distinctByEncryptedJournalText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'encryptedJournalText',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QDistinct>
      distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QDistinct>
      distinctBySupabaseUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supabaseUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MentalWellnessJournalDto, MentalWellnessJournalDto, QDistinct>
      distinctByWellnessScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wellnessScore');
    });
  }
}

extension MentalWellnessJournalDtoQueryProperty on QueryBuilder<
    MentalWellnessJournalDto, MentalWellnessJournalDto, QQueryProperty> {
  QueryBuilder<MentalWellnessJournalDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MentalWellnessJournalDto, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<MentalWellnessJournalDto, String, QQueryOperations>
      encryptedJournalTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'encryptedJournalText');
    });
  }

  QueryBuilder<MentalWellnessJournalDto, bool, QQueryOperations>
      isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<MentalWellnessJournalDto, String, QQueryOperations>
      supabaseUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supabaseUuid');
    });
  }

  QueryBuilder<MentalWellnessJournalDto, int, QQueryOperations>
      wellnessScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wellnessScore');
    });
  }
}
