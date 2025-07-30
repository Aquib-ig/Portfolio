import 'package:flutter/material.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contact Me',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(
                'Have a project in mind or want to collaborate?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  // You can open email or contact page
                },
                icon: const Icon(Icons.mail),
                label: const Text('Get in Touch'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
