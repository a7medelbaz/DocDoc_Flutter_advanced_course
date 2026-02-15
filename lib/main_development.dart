import 'core/di/dependency_injection.dart';
import 'core/routers/app_router.dart';
import 'doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
