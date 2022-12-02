import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'questions_record.g.dart';

abstract class QuestionsRecord
    implements Built<QuestionsRecord, QuestionsRecordBuilder> {
  static Serializer<QuestionsRecord> get serializer =>
      _$questionsRecordSerializer;

  @BuiltValueField(wireName: 'post_title')
  String? get postTitle;

  @BuiltValueField(wireName: 'post_description')
  String? get postDescription;

  @BuiltValueField(wireName: 'post_user')
  DocumentReference? get postUser;

  @BuiltValueField(wireName: 'time_posted')
  DateTime? get timePosted;

  @BuiltValueField(wireName: 'num_comments')
  int? get numComments;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(QuestionsRecordBuilder builder) => builder
    ..postTitle = ''
    ..postDescription = ''
    ..numComments = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QuestionsRecord._();
  factory QuestionsRecord([void Function(QuestionsRecordBuilder) updates]) =
      _$QuestionsRecord;

  static QuestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQuestionsRecordData({
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numComments,
}) {
  final firestoreData = serializers.toFirestore(
    QuestionsRecord.serializer,
    QuestionsRecord(
      (q) => q
        ..postTitle = postTitle
        ..postDescription = postDescription
        ..postUser = postUser
        ..timePosted = timePosted
        ..numComments = numComments,
    ),
  );

  return firestoreData;
}
