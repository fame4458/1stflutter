// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Timer on _Timer, Store {
  final _$secondPassAtom = Atom(name: '_Timer.secondPass');

  @override
  int get secondPass {
    _$secondPassAtom.reportRead();
    return super.secondPass;
  }

  @override
  set secondPass(int value) {
    _$secondPassAtom.reportWrite(value, super.secondPass, () {
      super.secondPass = value;
    });
  }

  final _$isActiveAtom = Atom(name: '_Timer.isActive');

  @override
  bool get isActive {
    _$isActiveAtom.reportRead();
    return super.isActive;
  }

  @override
  set isActive(bool value) {
    _$isActiveAtom.reportWrite(value, super.isActive, () {
      super.isActive = value;
    });
  }

  final _$_TimerActionController = ActionController(name: '_Timer');

  @override
  void handleClick() {
    final _$actionInfo =
        _$_TimerActionController.startAction(name: '_Timer.handleClick');
    try {
      return super.handleClick();
    } finally {
      _$_TimerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
secondPass: ${secondPass},
isActive: ${isActive}
    ''';
  }
}
