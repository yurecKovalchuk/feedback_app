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
  $Res call({FeedbackStateStatus status});
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
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStateStatus,
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
  $Res call({FeedbackStateStatus status});
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
  }) {
    return _then(_$FeedbackStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStateStatus,
    ));
  }
}

/// @nodoc

class _$FeedbackStateImpl implements _FeedbackState {
  const _$FeedbackStateImpl({this.status = FeedbackStateStatus.initial});

  @override
  @JsonKey()
  final FeedbackStateStatus status;

  @override
  String toString() {
    return 'FeedbackState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      __$$FeedbackStateImplCopyWithImpl<_$FeedbackStateImpl>(this, _$identity);
}

abstract class _FeedbackState implements FeedbackState {
  const factory _FeedbackState({final FeedbackStateStatus status}) =
      _$FeedbackStateImpl;

  @override
  FeedbackStateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
