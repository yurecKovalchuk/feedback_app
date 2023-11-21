// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedbackState {
  FeedbackStateStatus get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedbackStateCopyWith<FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res, FeedbackState>;
  @useResult
  $Res call(
      {FeedbackStateStatus status,
      String name,
      String email,
      String message,
      String? errorMessage});
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res, $Val extends FeedbackState>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? email = null,
    Object? message = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStateStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbackStateImplCopyWith<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  factory _$$FeedbackStateImplCopyWith(
          _$FeedbackStateImpl value, $Res Function(_$FeedbackStateImpl) then) =
      __$$FeedbackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FeedbackStateStatus status,
      String name,
      String email,
      String message,
      String? errorMessage});
}

/// @nodoc
class __$$FeedbackStateImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$FeedbackStateImpl>
    implements _$$FeedbackStateImplCopyWith<$Res> {
  __$$FeedbackStateImplCopyWithImpl(
      _$FeedbackStateImpl _value, $Res Function(_$FeedbackStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? email = null,
    Object? message = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FeedbackStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStateStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeedbackStateImpl implements _FeedbackState {
  const _$FeedbackStateImpl(
      {this.status = FeedbackStateStatus.initial,
      required this.name,
      required this.email,
      required this.message,
      this.errorMessage});

  @override
  @JsonKey()
  final FeedbackStateStatus status;
  @override
  final String name;
  @override
  final String email;
  @override
  final String message;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FeedbackState(status: $status, name: $name, email: $email, message: $message, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, name, email, message, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      __$$FeedbackStateImplCopyWithImpl<_$FeedbackStateImpl>(this, _$identity);
}

abstract class _FeedbackState implements FeedbackState {
  const factory _FeedbackState(
      {final FeedbackStateStatus status,
      required final String name,
      required final String email,
      required final String message,
      final String? errorMessage}) = _$FeedbackStateImpl;

  @override
  FeedbackStateStatus get status;
  @override
  String get name;
  @override
  String get email;
  @override
  String get message;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
