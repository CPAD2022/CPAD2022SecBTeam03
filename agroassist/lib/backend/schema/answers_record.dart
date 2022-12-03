import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'answers_record.g.dart';

abstract class AnswersRecord
    implements Built<AnswersRecord, AnswersRecordBuilder> {
  static Serializer<AnswersRecord> get serializer => _$answersRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  DocumentReference? get qsnRef;

  String? get answer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AnswersRecordBuilder builder) => builder
    ..name = ''
    ..answer = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('answers');

  static Stream<AnswersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AnswersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AnswersRecord._();
  factory AnswersRecord([void Function(AnswersRecordBuilder) updates]) =
      _$AnswersRecord;

  static AnswersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAnswersRecordData({
  String? name,
  DateTime? createdAt,
  DocumentReference? qsnRef,
  String? answer,
}) {
  final firestoreData = serializers.toFirestore(
    AnswersRecord.serializer,
    AnswersRecord(
      (a) => a
        ..name = name
        ..createdAt = createdAt
        ..qsnRef = qsnRef
        ..answer = answer,
    ),
  );

  return firestoreData;
}
