import 'package:doc_doc/core/di/dependency_injection.dart';
import 'package:doc_doc/core/routers/app_router.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
