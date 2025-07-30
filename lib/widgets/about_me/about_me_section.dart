import 'package:flutter/material.dart';
import 'package:portfolio/extensions.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.insets.padding,
        vertical: context.insets.padding * 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading
          Text('About Me', style: context.textStyle.titleLarge),
          SizedBox(height: context.insets.padding),

          // Summary
          Text(
            "I'm Aquib Khan, a passionate Flutter Developer with hands-on experience building scalable, high-performance mobile apps. "
            "I specialize in Flutter, Dart, and Firebase, and love creating secure, responsive, and user-friendly interfaces. "
            "Currently pursuing BSc IT from Mumbai University, I’ve developed real-world apps during my internship at Exceptions and personal projects. "
            "I thrive in collaborative environments and enjoy transforming ideas into sleek, maintainable applications.",
            style: context.textStyle.bodyRegular.copyWith(height: 1.6),
          ),

          SizedBox(height: context.insets.padding * 2),

          // Detail Info Grid
          Wrap(
            spacing: context.insets.padding * 2,
            runSpacing: context.insets.padding,
            children: const [
              AboutItem(
                icon: Icons.school,
                title: "Education",
                subtitle: "BSc IT, Mumbai University",
              ),
              AboutItem(
                icon: Icons.location_on,
                title: "Location",
                subtitle: "Bhiwandi, Maharashtra, India",
              ),
              AboutItem(
                icon: Icons.work,
                title: "Experience",
                subtitle: "Flutter Developer Intern at Exceptions",
              ),
              AboutItem(
                icon: Icons.email,
                title: "Email",
                subtitle: "khanaquibak011@gmail.com",
              ),
              AboutItem(
                icon: Icons.phone,
                title: "Phone",
                subtitle: "+91 8857808094",
              ),
              AboutItem(
                icon: Icons.link,
                title: "LinkedIn",
                subtitle: "linkedin.com/in/aquib-khan",
              ),
              AboutItem(
                icon: Icons.code,
                title: "GitHub",
                subtitle: "github.com/Aquib-ig",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const AboutItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobile;

    return SizedBox(
      width: isMobile ? double.infinity : 280,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: context.theme.colorScheme.primary),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textStyle.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(subtitle, style: context.textStyle.bodyRegular),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
