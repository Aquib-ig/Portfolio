import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            // Profile Image
            CircleAvatar(
              radius: 60,
              // backgroundImage: AssetImage('assets/images/profile.jpg'), // adjust path
            ),
            const SizedBox(height: 16),

            // Name
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Subtitle
            Text(
              'Flutter Developer | UI/UX Enthusiast',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),

            const SizedBox(height: 16),

            // Summary
            Text(
              'I design and develop clean, modern mobile and web apps using Flutter. Passionate about performance, simplicity, and beautiful UIs.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
