import 'package:doc_doc/core/routers/app_router.dart';
import 'package:doc_doc/core/routers/routes.dart';
import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DocDoc',
        theme: ThemeData(
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: AppColors.mainWhite,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingRoute,
      ),
    );
  }
}
