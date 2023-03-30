import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'personaldetails_record.g.dart';

abstract class PersonaldetailsRecord
    implements Built<PersonaldetailsRecord, PersonaldetailsRecordBuilder> {
  static Serializer<PersonaldetailsRecord> get serializer =>
      _$personaldetailsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Phone_Number')
  int? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PersonaldetailsRecordBuilder builder) =>
      builder
        ..name = ''
        ..phoneNumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('personaldetails');

  static Stream<PersonaldetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PersonaldetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PersonaldetailsRecord._();
  factory PersonaldetailsRecord(
          [void Function(PersonaldetailsRecordBuilder) updates]) =
      _$PersonaldetailsRecord;

  static PersonaldetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPersonaldetailsRecordData({
  String? name,
  int? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    PersonaldetailsRecord.serializer,
    PersonaldetailsRecord(
      (p) => p
        ..name = name
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
