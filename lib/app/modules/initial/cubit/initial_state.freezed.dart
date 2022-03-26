// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'initial_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitialStateTearOff {
  const _$InitialStateTearOff();

  _InitialState call(
      {bool isLoading = false,
      bool hasError = false,
      String message = '',
      bool isLoggedIn = false}) {
    return _InitialState(
      isLoading: isLoading,
      hasError: hasError,
      message: message,
      isLoggedIn: isLoggedIn,
    );
  }
}

/// @nodoc
const $InitialState = _$InitialStateTearOff();

/// @nodoc
mixin _$InitialState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialStateCopyWith<InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool hasError, String message, bool isLoggedIn});
}

/// @nodoc
class _$InitialStateCopyWithImpl<$Res> implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(this._value, this._then);

  final InitialState _value;
  // ignore: unused_field
  final $Res Function(InitialState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? message = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res>
    implements $InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool hasError, String message, bool isLoggedIn});
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res> extends _$InitialStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? message = freezed,
    Object? isLoggedIn = freezed,
  }) {
    return _then(_InitialState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitialState extends _InitialState {
  const _$_InitialState(
      {this.isLoading = false,
      this.hasError = false,
      this.message = '',
      this.isLoggedIn = false})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool hasError;
  @JsonKey(defaultValue: '')
  @override
  final String message;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'InitialState(isLoading: $isLoading, hasError: $hasError, message: $message, isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasError, hasError) ||
                const DeepCollectionEquality()
                    .equals(other.hasError, hasError)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.isLoggedIn, isLoggedIn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasError) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(isLoggedIn);

  @JsonKey(ignore: true)
  @override
  _$InitialStateCopyWith<_InitialState> get copyWith =>
      __$InitialStateCopyWithImpl<_InitialState>(this, _$identity);
}

abstract class _InitialState extends InitialState {
  const factory _InitialState(
      {bool isLoading,
      bool hasError,
      String message,
      bool isLoggedIn}) = _$_InitialState;
  const _InitialState._() : super._();

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isLoggedIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialStateCopyWith<_InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}
