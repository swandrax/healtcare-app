// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digital_medical_record_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDigitalMedicalRecordDtoCollection on Isar {
  IsarCollection<DigitalMedicalRecordDto> get digitalMedicalRecordDtos =>
      this.collection();
}

const DigitalMedicalRecordDtoSchema = CollectionSchema(
  name: r'DigitalMedicalRecordDto',
  id: 6390132437482332776,
  properties: {
    r'allergies': PropertySchema(
      id: 0,
      name: r'allergies',
      type: IsarType.stringList,
    ),
    r'consultationNotes': PropertySchema(
      id: 1,
      name: r'consultationNotes',
      type: IsarType.string,
    ),
    r'localAttachmentPaths': PropertySchema(
      id: 2,
      name: r'localAttachmentPaths',
      type: IsarType.stringList,
    ),
    r'localUserId': PropertySchema(
      id: 3,
      name: r'localUserId',
      type: IsarType.long,
    ),
    r'prescribedMedications': PropertySchema(
      id: 4,
      name: r'prescribedMedications',
      type: IsarType.stringList,
    ),
    r'recordDate': PropertySchema(
      id: 5,
      name: r'recordDate',
      type: IsarType.dateTime,
    ),
    r'supabaseUuid': PropertySchema(
      id: 6,
      name: r'supabaseUuid',
      type: IsarType.string,
    ),
    r'syncedAt': PropertySchema(
      id: 7,
      name: r'syncedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _digitalMedicalRecordDtoEstimateSize,
  serialize: _digitalMedicalRecordDtoSerialize,
  deserialize: _digitalMedicalRecordDtoDeserialize,
  deserializeProp: _digitalMedicalRecordDtoDeserializeProp,
  idName: r'id',
  indexes: {
    r'localUserId': IndexSchema(
      id: -3138318910629348885,
      name: r'localUserId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'localUserId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _digitalMedicalRecordDtoGetId,
  getLinks: _digitalMedicalRecordDtoGetLinks,
  attach: _digitalMedicalRecordDtoAttach,
  version: '3.1.0+1',
);

int _digitalMedicalRecordDtoEstimateSize(
  DigitalMedicalRecordDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.allergies.length * 3;
  {
    for (var i = 0; i < object.allergies.length; i++) {
      final value = object.allergies[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.consultationNotes.length * 3;
  bytesCount += 3 + object.localAttachmentPaths.length * 3;
  {
    for (var i = 0; i < object.localAttachmentPaths.length; i++) {
      final value = object.localAttachmentPaths[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.prescribedMedications.length * 3;
  {
    for (var i = 0; i < object.prescribedMedications.length; i++) {
      final value = object.prescribedMedications[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.supabaseUuid.length * 3;
  return bytesCount;
}

void _digitalMedicalRecordDtoSerialize(
  DigitalMedicalRecordDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.allergies);
  writer.writeString(offsets[1], object.consultationNotes);
  writer.writeStringList(offsets[2], object.localAttachmentPaths);
  writer.writeLong(offsets[3], object.localUserId);
  writer.writeStringList(offsets[4], object.prescribedMedications);
  writer.writeDateTime(offsets[5], object.recordDate);
  writer.writeString(offsets[6], object.supabaseUuid);
  writer.writeDateTime(offsets[7], object.syncedAt);
}

DigitalMedicalRecordDto _digitalMedicalRecordDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DigitalMedicalRecordDto();
  object.allergies = reader.readStringList(offsets[0]) ?? [];
  object.consultationNotes = reader.readString(offsets[1]);
  object.id = id;
  object.localAttachmentPaths = reader.readStringList(offsets[2]) ?? [];
  object.localUserId = reader.readLong(offsets[3]);
  object.prescribedMedications = reader.readStringList(offsets[4]) ?? [];
  object.recordDate = reader.readDateTime(offsets[5]);
  object.supabaseUuid = reader.readString(offsets[6]);
  object.syncedAt = reader.readDateTime(offsets[7]);
  return object;
}

P _digitalMedicalRecordDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _digitalMedicalRecordDtoGetId(DigitalMedicalRecordDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _digitalMedicalRecordDtoGetLinks(
    DigitalMedicalRecordDto object) {
  return [];
}

void _digitalMedicalRecordDtoAttach(
    IsarCollection<dynamic> col, Id id, DigitalMedicalRecordDto object) {
  object.id = id;
}

extension DigitalMedicalRecordDtoQueryWhereSort
    on QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QWhere> {
  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterWhere>
      anyLocalUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'localUserId'),
      );
    });
  }
}

extension DigitalMedicalRecordDtoQueryWhere on QueryBuilder<
    DigitalMedicalRecordDto, DigitalMedicalRecordDto, QWhereClause> {
  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> localUserIdEqualTo(int localUserId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'localUserId',
        value: [localUserId],
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> localUserIdNotEqualTo(int localUserId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localUserId',
              lower: [],
              upper: [localUserId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localUserId',
              lower: [localUserId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localUserId',
              lower: [localUserId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localUserId',
              lower: [],
              upper: [localUserId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> localUserIdGreaterThan(
    int localUserId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'localUserId',
        lower: [localUserId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> localUserIdLessThan(
    int localUserId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'localUserId',
        lower: [],
        upper: [localUserId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterWhereClause> localUserIdBetween(
    int lowerLocalUserId,
    int upperLocalUserId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'localUserId',
        lower: [lowerLocalUserId],
        includeLower: includeLower,
        upper: [upperLocalUserId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DigitalMedicalRecordDtoQueryFilter on QueryBuilder<
    DigitalMedicalRecordDto, DigitalMedicalRecordDto, QFilterCondition> {
  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'allergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'allergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'allergies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'allergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'allergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      allergiesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'allergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      allergiesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'allergies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allergies',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'allergies',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allergies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allergies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allergies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allergies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allergies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> allergiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'allergies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'consultationNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'consultationNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'consultationNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'consultationNotes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'consultationNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'consultationNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      consultationNotesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'consultationNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      consultationNotesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'consultationNotes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'consultationNotes',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> consultationNotesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'consultationNotes',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localAttachmentPaths',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localAttachmentPaths',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localAttachmentPaths',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localAttachmentPaths',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localAttachmentPaths',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localAttachmentPaths',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      localAttachmentPathsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localAttachmentPaths',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      localAttachmentPathsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localAttachmentPaths',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localAttachmentPaths',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localAttachmentPaths',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'localAttachmentPaths',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'localAttachmentPaths',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'localAttachmentPaths',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'localAttachmentPaths',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'localAttachmentPaths',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localAttachmentPathsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'localAttachmentPaths',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localUserIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localUserIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localUserIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> localUserIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prescribedMedications',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prescribedMedications',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prescribedMedications',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prescribedMedications',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prescribedMedications',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prescribedMedications',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      prescribedMedicationsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prescribedMedications',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
          QAfterFilterCondition>
      prescribedMedicationsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prescribedMedications',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prescribedMedications',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prescribedMedications',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prescribedMedications',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prescribedMedications',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prescribedMedications',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prescribedMedications',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prescribedMedications',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> prescribedMedicationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prescribedMedications',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> recordDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recordDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> recordDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recordDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> recordDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recordDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> recordDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recordDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
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

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> supabaseUuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> supabaseUuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supabaseUuid',
        value: '',
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> syncedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> syncedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> syncedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto,
      QAfterFilterCondition> syncedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DigitalMedicalRecordDtoQueryObject on QueryBuilder<
    DigitalMedicalRecordDto, DigitalMedicalRecordDto, QFilterCondition> {}

extension DigitalMedicalRecordDtoQueryLinks on QueryBuilder<
    DigitalMedicalRecordDto, DigitalMedicalRecordDto, QFilterCondition> {}

extension DigitalMedicalRecordDtoQuerySortBy
    on QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QSortBy> {
  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortByConsultationNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationNotes', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortByConsultationNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationNotes', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortByLocalUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localUserId', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortByLocalUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localUserId', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortByRecordDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortBySyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncedAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      sortBySyncedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncedAt', Sort.desc);
    });
  }
}

extension DigitalMedicalRecordDtoQuerySortThenBy on QueryBuilder<
    DigitalMedicalRecordDto, DigitalMedicalRecordDto, QSortThenBy> {
  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenByConsultationNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationNotes', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenByConsultationNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consultationNotes', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenByLocalUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localUserId', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenByLocalUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localUserId', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenByRecordDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recordDate', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenBySupabaseUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenBySupabaseUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseUuid', Sort.desc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenBySyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncedAt', Sort.asc);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QAfterSortBy>
      thenBySyncedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncedAt', Sort.desc);
    });
  }
}

extension DigitalMedicalRecordDtoQueryWhereDistinct on QueryBuilder<
    DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct> {
  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctByAllergies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'allergies');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctByConsultationNotes({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'consultationNotes',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctByLocalAttachmentPaths() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localAttachmentPaths');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctByLocalUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localUserId');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctByPrescribedMedications() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prescribedMedications');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctByRecordDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recordDate');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctBySupabaseUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supabaseUuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DigitalMedicalRecordDto, QDistinct>
      distinctBySyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncedAt');
    });
  }
}

extension DigitalMedicalRecordDtoQueryProperty on QueryBuilder<
    DigitalMedicalRecordDto, DigitalMedicalRecordDto, QQueryProperty> {
  QueryBuilder<DigitalMedicalRecordDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, List<String>, QQueryOperations>
      allergiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'allergies');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, String, QQueryOperations>
      consultationNotesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'consultationNotes');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, List<String>, QQueryOperations>
      localAttachmentPathsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localAttachmentPaths');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, int, QQueryOperations>
      localUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localUserId');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, List<String>, QQueryOperations>
      prescribedMedicationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prescribedMedications');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DateTime, QQueryOperations>
      recordDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recordDate');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, String, QQueryOperations>
      supabaseUuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supabaseUuid');
    });
  }

  QueryBuilder<DigitalMedicalRecordDto, DateTime, QQueryOperations>
      syncedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncedAt');
    });
  }
}
