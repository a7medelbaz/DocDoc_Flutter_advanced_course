import 'package:doc_doc/core/helper/spacing.dart';
import 'package:doc_doc/features/home/ui/widgets/doctor_specialty_section.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list.dart';
import 'package:doc_doc/features/home/ui/widgets/home_top_bar.dart';
import 'package:doc_doc/features/home/ui/widgets/nearest_doctor_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsetsGeometry.fromLTRB(20.w, 20.h, 20.w, 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeTopBar(),
              NearestDoctorContainer(),
              verticalSpace(24),
              DoctorSpecialtySection(),
              verticalSpace(24),
              Expanded(child: DoctorsList()),
            ],
          ),
        ),
      ),
    );
  }
}
