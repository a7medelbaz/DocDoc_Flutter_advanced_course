import 'package:doc_doc/features/home/ui/widgets/doctor_specialty_list.dart';
import 'package:doc_doc/features/home/ui/widgets/see_all_title.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';

class DoctorSpecialtySection extends StatelessWidget {
  const DoctorSpecialtySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SeeAllTitle(
          title: 'Doctor Specialty',
          onTap: () {
            // ToDo
          },
        ),
        verticalSpace(16),
        DoctorSpecialtyList(),
      ],
    );
  }
}
