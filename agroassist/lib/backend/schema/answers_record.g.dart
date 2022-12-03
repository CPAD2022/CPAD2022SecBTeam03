// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnswersRecord> _$answersRecordSerializer =
    new _$AnswersRecordSerializer();

class _$AnswersRecordSerializer implements StructuredSerializer<AnswersRecord> {
  @override
  final Iterable<Type> types = const [AnswersRecord, _$AnswersRecord];
  @override
  final String wireName = 'AnswersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnswersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.qsnRef;
    if (value != null) {
      result
        ..add('qsnRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  AnswersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnswersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'qsnRef':
          result.qsnRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$AnswersRecord extends AnswersRecord {
  @override
  final String? name;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? qsnRef;
  @override
  final String? answer;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AnswersRecord([void Function(AnswersRecordBuilder)? updates]) =>
      (new AnswersRecordBuilder()..update(updates))._build();

  _$AnswersRecord._(
      {this.name, this.createdAt, this.qsnRef, this.answer, this.ffRef})
      : super._();

  @override
  AnswersRecord rebuild(void Function(AnswersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswersRecordBuilder toBuilder() => new AnswersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswersRecord &&
        name == other.name &&
        createdAt == other.createdAt &&
        qsnRef == other.qsnRef &&
        answer == other.answer &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), createdAt.hashCode),
                qsnRef.hashCode),
            answer.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnswersRecord')
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('qsnRef', qsnRef)
          ..add('answer', answer)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AnswersRecordBuilder
    implements Builder<AnswersRecord, AnswersRecordBuilder> {
  _$AnswersRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _qsnRef;
  DocumentReference<Object?>? get qsnRef => _$this._qsnRef;
  set qsnRef(DocumentReference<Object?>? qsnRef) => _$this._qsnRef = qsnRef;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AnswersRecordBuilder() {
    AnswersRecord._initializeBuilder(this);
  }

  AnswersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _createdAt = $v.createdAt;
      _qsnRef = $v.qsnRef;
      _answer = $v.answer;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswersRecord;
  }

  @override
  void update(void Function(AnswersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswersRecord build() => _build();

  _$AnswersRecord _build() {
    final _$result = _$v ??
        new _$AnswersRecord._(
            name: name,
            createdAt: createdAt,
            qsnRef: qsnRef,
            answer: answer,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
