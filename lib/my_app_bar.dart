import 'package:flutter/material.dart';
import 'package:portfolio/extensions.dart';
import 'package:portfolio/theme/app_insets.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      // color: Theme.of(context).appBarTheme.backgroundColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      height: context.insets.appBarHeight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [  
            AppLogo(),
            Spacer(),
            if (context.isDesktop) AppMenu(),
            Spacer(),
            LanguageToggle(),
            ThemeToggle(),
            if (!context.isDesktop) Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Protfolio", style: context.textStyle.titleLarge);
  }
}

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Text("Home"), Text("About me"), Text("Contact")]);
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text("English")),
          PopupMenuItem(child: Text("Spanish")),
          PopupMenuItem(child: Text("Hindi")),
          PopupMenuItem(child: Text("Arabic")),
          PopupMenuItem(child: Text("Urdu")),
        ];
      },
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
