import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_me/about_me_section.dart';
import 'package:portfolio/widgets/appbar/my_app_bar.dart';
import 'package:portfolio/widgets/contact_me/contact_me_section.dart';
import 'package:portfolio/widgets/profile/profile_section.dart';
import 'package:portfolio/widgets/project/projects_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Make scrollable if content overflows
        child: Column(
          children: const [
            MyAppBar(),
            SizedBox(height: 32),
            ProfileSection(),
            SizedBox(height: 48),
            AboutMeSection(),
            SizedBox(height: 48),
            ProjectsSection(),
            SizedBox(height: 48),
            ContactMeSection(),
            SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
