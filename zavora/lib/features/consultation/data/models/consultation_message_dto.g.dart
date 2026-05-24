// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_message_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetConsultationMessageDtoCollection on Isar {
  IsarCollection<ConsultationMessageDto> get consultationMessageDtos =>
      this.collection();
}

const ConsultationMessageDtoSchema = CollectionSchema(
  name: r'ConsultationMessageDto',
  id: -1232403493645390874,
  properties: {
    r'consultationId': PropertySchema(
      id: 0,
      name: r'consultationId',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'isSynced': PropertySchema(
      id: 2,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'messageText': PropertySchema(
      id: 3,
      name: r'messageText',
      type: IsarType.string,
    ),
    r'senderIdUuid': PropertySchema(
      id: 4,
      name: r'senderIdUuid',
      type: IsarType.string,
    ),
    r'supabaseUuid': PropertySchema(
      id: 5,
      name: r'supabaseUuid',
      type: IsarType.string,
    )
  },
  estimateSize: _consultationMessageDtoEstimateSize,
  serialize: _consultationMessageDtoSerialize,
  deserialize: _consultationMessageDtoDeserialize,
  deserializeProp: _consultationMessageDtoDeserializeProp,
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
  getId: _consultationMessageDtoGetId,
  getLinks: _consultationMessageDtoGetLinks,
  attach: _consultationMessageDtoAttach,
  version: '3.1.0+1',
);

int _consultationMessageDtoEstimateSize(
  ConsultationMessageDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.consultationId.length * 3;
  bytesCount += 3 + object.messageText.length * 3;
  bytesCount += 3 + object.senderIdUuid.length * 3;
  bytesCount += 3 + object.supabaseUuid.length * 3;
  return bytesCount;
}

void _consultationMessageDtoSerialize(
  ConsultationMessageDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.consultationId);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeBool(offsets[2], object.isSynced);
  writer.writeString(offsets[3], object.messageText);
  writer.writeString(offsets[4], object.senderIdUuid);
  writer.writeString(offsets[5], object.supabaseUuid);
}

ConsultationMessageDto _consultationMessageDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ConsultationMessageDto();
  object.consultationId = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.id = id;
  object.isSynced = reader.readBool(offsets[2]);
  object.messageText = reader.readString(offsets[3]);
  object.senderIdUuid = reader.readString(offsets[4]);
  object.supabaseUuid = reader.readString(offsets[5]);
  return object;
}

P _consultationMessageDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _consultationMessageDtoGetId(ConsultationMessageDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _consultationMessageDtoGetLinks(
    ConsultationMessageDto object) {
  return [];
}

void _consultationMessageDtoAttach(
    IsarCollection<dynamic> col, Id id, ConsultationMessageDto object) {
  object.id = id;
}

extension ConsultationMessageDtoByIndex
    on IsarCollection<ConsultationMessageDto> {
  Future<ConsultationMessageDto?> getBySupabaseUuid(String supabaseUuid) {
    return getByIndex(r'supabaseUuid', [supabaseUuid]);
  }

  ConsultationMessageDto? getBySupabaseUuidSync(String supabaseUuid) {
    return getByIndexSync(r'supabaseUuid', [supabaseUuid]);
  }

  Future<bool> deleteBySupabaseUuid(String supabaseUuid) {
    return deleteByIndex(r'supabaseUuid', [supabaseUuid]);
  }

  bool deleteBySupabaseUuidSync(String supabaseUuid) {
    return deleteByIndexSync(r'supabaseUuid', [supabaseUuid]);
  }

  Future<List<ConsultationMessageDto?>> getAllBySupabaseUuid(
      List<String> supabaseUuidValues) {
    final values = supabaseUuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'supabaseUuid', values);
  }

  List<ConsultationMessageDto?> getAllBySupabaseUuidSync(
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

  Future<Id> putBySupabaseUuid(ConsultationMessageDto object) {
    return putByIndex(r'supabaseUuid', object);
  }

  Id putBySupabaseUuidSync(ConsultationMessageDto object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'supabaseUuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySupabaseUuid(List<ConsultationMessageDto> objects) {
    return putAllByIndex(r'supabaseUuid', objects);
  }

  List<Id> putAllBySupabaseUuidSync(List<ConsultationMessageDto> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'supabaseUuid', objects, saveLinks: saveLinks);
  }
}

extension ConsultationMessageDtoQueryWhereSort
    on QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QWhere> {
  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterWhere>
      anyIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isSynced'),
      );
    });
  }
}

extension ConsultationMessageDtoQueryWhere on QueryBuilder<
    ConsultationMessageDto, ConsultationMessageDto, QWhereClause> {
  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterWhereClause> supabaseUuidEqualTo(String supabaseUuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'supabaseUuid',
        value: [supabaseUuid],
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterWhereClause> isSyncedEqualTo(bool isSynced) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isSynced',
        value: [isSynced],
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

extension ConsultationMessageDtoQueryFilter on QueryBuilder<
    ConsultationMessageDto, ConsultationMessageDto, QFilterCondition> {
  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'consultationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'consultationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'consultationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'consultationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'consultationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'consultationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
          QAfterFilterCondition>
      consultationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'consultationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
          QAfterFilterCondition>
      consultationIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'consultationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'consultationId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> consultationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'consultationId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> isSyncedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'messageText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'messageText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'messageText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'messageText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'messageText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'messageText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
          QAfterFilterCondition>
      messageTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'messageText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
          QAfterFilterCondition>
      messageTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'messageText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'messageText',
        value: '',
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> messageTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'messageText',
        value: '',
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'senderIdUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'senderIdUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'senderIdUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'senderIdUuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'senderIdUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'senderIdUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
          QAfterFilterCondition>
      senderIdUuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'senderIdUuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
          QAfterFilterCondition>
      senderIdUuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'senderIdUuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'senderIdUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> senderIdUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'senderIdUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
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

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> supabaseUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto,
      QAfterFilterCondition> supabaseUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }
}

extension ConsultationMessageDtoQueryObject on QueryBuilder<
    ConsultationMessageDto, ConsultationMessageDto, QFilterCondition> {}

extension ConsultationMessageDtoQueryLinks on QueryBuilder<
    ConsultationMessageDto, ConsultationMessageDto, QFilterCondition> {}

extension ConsultationMessageDtoQuerySortBy
    on QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QSortBy> {
  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByConsultationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationId', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByConsultationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationId', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByMessageText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageText', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortByMessageTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageText', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortBySenderIdUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderIdUuid', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortBySenderIdUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderIdUuid', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      sortBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }
}

extension ConsultationMessageDtoQuerySortThenBy on QueryBuilder<
    ConsultationMessageDto, ConsultationMessageDto, QSortThenBy> {
  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByConsultationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationId', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByConsultationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationId', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByMessageText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageText', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenByMessageTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageText', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenBySenderIdUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderIdUuid', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenBySenderIdUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderIdUuid', Sort.desc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QAfterSortBy>
      thenBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }
}

extension ConsultationMessageDtoQueryWhereDistinct
    on QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QDistinct> {
  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QDistinct>
      distinctByConsultationId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'consultationId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QDistinct>
      distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QDistinct>
      distinctByMessageText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'messageText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QDistinct>
      distinctBySenderIdUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'senderIdUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConsultationMessageDto, ConsultationMessageDto, QDistinct>
      distinctBySupabaseUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supabaseUuid', caseSensitive: caseSensitive);
    });
  }
}

extension ConsultationMessageDtoQueryProperty on QueryBuilder<
    ConsultationMessageDto, ConsultationMessageDto, QQueryProperty> {
  QueryBuilder<ConsultationMessageDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ConsultationMessageDto, String, QQueryOperations>
      consultationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'consultationId');
    });
  }

  QueryBuilder<ConsultationMessageDto, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ConsultationMessageDto, bool, QQueryOperations>
      isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<ConsultationMessageDto, String, QQueryOperations>
      messageTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'messageText');
    });
  }

  QueryBuilder<ConsultationMessageDto, String, QQueryOperations>
      senderIdUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'senderIdUuid');
    });
  }

  QueryBuilder<ConsultationMessageDto, String, QQueryOperations>
      supabaseUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supabaseUuid');
    });
  }
}
