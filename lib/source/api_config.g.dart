// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_config.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$APIConfig on APIConfigBase, Store {
  late final _$mastondonInstanceAtom =
      Atom(name: 'APIConfigBase.mastondonInstance', context: context);

  @override
  String get mastondonInstance {
    _$mastondonInstanceAtom.reportRead();
    return super.mastondonInstance;
  }

  @override
  set mastondonInstance(String value) {
    _$mastondonInstanceAtom.reportWrite(value, super.mastondonInstance, () {
      super.mastondonInstance = value;
    });
  }

  late final _$breaveTokenAtom =
      Atom(name: 'APIConfigBase.breaveToken', context: context);

  @override
  String get breaveToken {
    _$breaveTokenAtom.reportRead();
    return super.breaveToken;
  }

  @override
  set breaveToken(String value) {
    _$breaveTokenAtom.reportWrite(value, super.breaveToken, () {
      super.breaveToken = value;
    });
  }

  @override
  String toString() {
    return '''
mastondonInstance: ${mastondonInstance},
breaveToken: ${breaveToken}
    ''';
  }
}
