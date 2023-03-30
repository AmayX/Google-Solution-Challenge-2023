// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'r_s_v_p_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RSVPDetailsRecord> _$rSVPDetailsRecordSerializer =
    new _$RSVPDetailsRecordSerializer();

class _$RSVPDetailsRecordSerializer
    implements StructuredSerializer<RSVPDetailsRecord> {
  @override
  final Iterable<Type> types = const [RSVPDetailsRecord, _$RSVPDetailsRecord];
  @override
  final String wireName = 'RSVPDetailsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RSVPDetailsRecord object,
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
    value = object.emailID;
    if (value != null) {
      result
        ..add('Email_ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventID;
    if (value != null) {
      result
        ..add('Event_ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  RSVPDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RSVPDetailsRecordBuilder();

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
        case 'Email_ID':
          result.emailID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Event_ID':
          result.eventID = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$RSVPDetailsRecord extends RSVPDetailsRecord {
  @override
  final String? name;
  @override
  final String? emailID;
  @override
  final DocumentReference<Object?>? eventID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RSVPDetailsRecord(
          [void Function(RSVPDetailsRecordBuilder)? updates]) =>
      (new RSVPDetailsRecordBuilder()..update(updates))._build();

  _$RSVPDetailsRecord._({this.name, this.emailID, this.eventID, this.ffRef})
      : super._();

  @override
  RSVPDetailsRecord rebuild(void Function(RSVPDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RSVPDetailsRecordBuilder toBuilder() =>
      new RSVPDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RSVPDetailsRecord &&
        name == other.name &&
        emailID == other.emailID &&
        eventID == other.eventID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, emailID.hashCode);
    _$hash = $jc(_$hash, eventID.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RSVPDetailsRecord')
          ..add('name', name)
          ..add('emailID', emailID)
          ..add('eventID', eventID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RSVPDetailsRecordBuilder
    implements Builder<RSVPDetailsRecord, RSVPDetailsRecordBuilder> {
  _$RSVPDetailsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _emailID;
  String? get emailID => _$this._emailID;
  set emailID(String? emailID) => _$this._emailID = emailID;

  DocumentReference<Object?>? _eventID;
  DocumentReference<Object?>? get eventID => _$this._eventID;
  set eventID(DocumentReference<Object?>? eventID) => _$this._eventID = eventID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RSVPDetailsRecordBuilder() {
    RSVPDetailsRecord._initializeBuilder(this);
  }

  RSVPDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _emailID = $v.emailID;
      _eventID = $v.eventID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RSVPDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RSVPDetailsRecord;
  }

  @override
  void update(void Function(RSVPDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RSVPDetailsRecord build() => _build();

  _$RSVPDetailsRecord _build() {
    final _$result = _$v ??
        new _$RSVPDetailsRecord._(
            name: name, emailID: emailID, eventID: eventID, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
