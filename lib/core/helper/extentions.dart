import 'package:flutter/material.dart';

/// Navigation Extensions
extension NavigationExt on BuildContext {
  /// Push a new screen (Widget)
  Future<T?> push<T extends Object?>(final Widget page) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Replace current screen
  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    final Widget page, {
    final TO? result,
  }) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (_) => page),
      result: result,
    );
  }

  /// Push and remove all previous screens
  Future<T?> pushAndRemoveAll<T extends Object?>(final Widget page) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (_) => page),
      (_) => false,
    );
  }

  /// Pop current screen
  void pop<T extends Object?>([final T? result]) {
    if (mounted) {
      Navigator.pop(this, result);
    }
  }

  /// Push by route name
  Future<T?> pushNamed<T extends Object?>(
    final String routeName, {
    final Object? arguments,
  }) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  /// Replace by route name
  Future<T?>
  pushReplacementNamed<T extends Object?, TO extends Object?>(
    final String routeName, {
    final Object? arguments,
    final TO? result,
  }) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  /// Push named route and clear previous navigation stack
  Future<T?> pushNamedAndRemoveAll<T extends Object?>(
    final String routeName, {
    final Object? arguments,
  }) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      routeName,
      (_) => false,
      arguments: arguments,
    );
  }
}
