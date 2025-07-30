import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/app_text_style.dart';
import 'package:portfolio/constants/app_menu_list.dart';
import 'package:portfolio/extensions.dart';
import 'package:portfolio/providers/theme_mode_provider.dart';
import 'package:portfolio/theme/app_insets.dart';
import 'package:portfolio/widgets/appbar/app_bar_drawer.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      color: context.theme.appBarTheme.backgroundColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      height: context.insets.appBarHeight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) LargeMenu(),
            Spacer(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawerIcon(),
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

class LargeMenu extends StatelessWidget {
  const LargeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.getItems(context)
          .map(
            (e) => LargeMenuListItem(
              text: e.title,
              isSelected: true,
              onTap: () {},
            ),
          )
          .toList(),
    );
  }
}

class LargeMenuListItem extends StatelessWidget {
  const LargeMenuListItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Text(text, style: SmallTextStyles().bodyLarge),
      ),
    );
  }
}
class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final isDarkMode = themeMode == ThemeMode.dark;

    return Switch(
      value: isDarkMode,
      onChanged: (_) {
        ref.read(themeModeProvider.notifier).toggle();
      },
    );
  }
}

