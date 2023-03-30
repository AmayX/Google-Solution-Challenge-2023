// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personaldetails_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonaldetailsRecord> _$personaldetailsRecordSerializer =
    new _$PersonaldetailsRecordSerializer();

class _$PersonaldetailsRecordSerializer
    implements StructuredSerializer<PersonaldetailsRecord> {
  @override
  final Iterable<Type> types = const [
    PersonaldetailsRecord,
    _$PersonaldetailsRecord
  ];
  @override
  final String wireName = 'PersonaldetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PersonaldetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('Phone_Number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PersonaldetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonaldetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Phone_Number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PersonaldetailsRecord extends PersonaldetailsRecord {
  @override
  final String? name;
  @override
  final int? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PersonaldetailsRecord(
          [void Function(PersonaldetailsRecordBuilder)? updates]) =>
      (new PersonaldetailsRecordBuilder()..update(updates))._build();

  _$PersonaldetailsRecord._({this.name, this.phoneNumber, this.ffRef})
      : super._();

  @override
  PersonaldetailsRecord rebuild(
          void Function(PersonaldetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonaldetailsRecordBuilder toBuilder() =>
      new PersonaldetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonaldetailsRecord &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonaldetailsRecord')
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PersonaldetailsRecordBuilder
    implements Builder<PersonaldetailsRecord, PersonaldetailsRecordBuilder> {
  _$PersonaldetailsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _phoneNumber;
  int? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PersonaldetailsRecordBuilder() {
    PersonaldetailsRecord._initializeBuilder(this);
  }

  PersonaldetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonaldetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonaldetailsRecord;
  }

  @override
  void update(void Function(PersonaldetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonaldetailsRecord build() => _build();

  _$PersonaldetailsRecord _build() {
    final _$result = _$v ??
        new _$PersonaldetailsRecord._(
            name: name, phoneNumber: phoneNumber, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
