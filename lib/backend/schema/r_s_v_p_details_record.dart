import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'r_s_v_p_details_record.g.dart';

abstract class RSVPDetailsRecord
    implements Built<RSVPDetailsRecord, RSVPDetailsRecordBuilder> {
  static Serializer<RSVPDetailsRecord> get serializer =>
      _$rSVPDetailsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Email_ID')
  String? get emailID;

  @BuiltValueField(wireName: 'Event_ID')
  DocumentReference? get eventID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RSVPDetailsRecordBuilder builder) => builder
    ..name = ''
    ..emailID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RSVP_Details');

  static Stream<RSVPDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RSVPDetailsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RSVPDetailsRecord._();
  factory RSVPDetailsRecord([void Function(RSVPDetailsRecordBuilder) updates]) =
      _$RSVPDetailsRecord;

  static RSVPDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRSVPDetailsRecordData({
  String? name,
  String? emailID,
  DocumentReference? eventID,
}) {
  final firestoreData = serializers.toFirestore(
    RSVPDetailsRecord.serializer,
    RSVPDetailsRecord(
      (r) => r
        ..name = name
        ..emailID = emailID
        ..eventID = eventID,
    ),
  );

  return firestoreData;
}
