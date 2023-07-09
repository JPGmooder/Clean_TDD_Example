// Mocks generated by Mockito 5.4.2 from annotations
// in tddclean/test/core/network/info_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDuration_0 extends _i1.SmartFake implements Duration {
  _FakeDuration_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [InternetConnection].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnection extends _i1.Mock
    implements _i2.InternetConnection {
  @override
  Duration get checkInterval => (super.noSuchMethod(
        Invocation.getter(#checkInterval),
        returnValue: _FakeDuration_0(
          this,
          Invocation.getter(#checkInterval),
        ),
        returnValueForMissingStub: _FakeDuration_0(
          this,
          Invocation.getter(#checkInterval),
        ),
      ) as Duration);
  @override
  _i3.Future<bool> get hasInternetAccess => (super.noSuchMethod(
        Invocation.getter(#hasInternetAccess),
        returnValue: _i3.Future<bool>.value(false),
        returnValueForMissingStub: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<_i2.InternetStatus> get internetStatus => (super.noSuchMethod(
        Invocation.getter(#internetStatus),
        returnValue:
            _i3.Future<_i2.InternetStatus>.value(_i2.InternetStatus.connected),
        returnValueForMissingStub:
            _i3.Future<_i2.InternetStatus>.value(_i2.InternetStatus.connected),
      ) as _i3.Future<_i2.InternetStatus>);
  @override
  _i3.Stream<_i2.InternetStatus> get onStatusChange => (super.noSuchMethod(
        Invocation.getter(#onStatusChange),
        returnValue: _i3.Stream<_i2.InternetStatus>.empty(),
        returnValueForMissingStub: _i3.Stream<_i2.InternetStatus>.empty(),
      ) as _i3.Stream<_i2.InternetStatus>);
}
