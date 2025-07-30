import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_menu_list.dart';

class AppBarDrawerIcon extends StatefulWidget {
  const AppBarDrawerIcon({super.key});

  @override
  State<AppBarDrawerIcon> createState() => _AppBarDrawerIconState();
}

class _AppBarDrawerIconState extends State<AppBarDrawerIcon> {
  OverlayEntry? _menuOverlay;
  final LayerLink _layerLink = LayerLink();
  bool _isMenuOpen = false;

  void _toggleMenu() {
    if (_isMenuOpen) {
      _closeMenu();
    } else {
      _openMenu();
    }
  }

  void _openMenu() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    _menuOverlay = OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: _closeMenu, // Tap outside closes
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            Positioned.fill(child: Container()), // captures tap outside
            Positioned(
              top: position.dy + renderBox.size.height + 8,
              right: 16,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).cardColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: AppMenuList.getItems(context).map((menu) {
                      return InkWell(
                        onTap: () {
                          _closeMenu();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(menu.title),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    overlay.insert(_menuOverlay!);
    setState(() {
      _isMenuOpen = true;
    });
  }

  void _closeMenu() {
    _menuOverlay?.remove();
    _menuOverlay = null;
    setState(() {
      _isMenuOpen = false;
    });
  }

  @override
  void dispose() {
    _closeMenu();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: IconButton(
        icon: Icon(_isMenuOpen ? Icons.close : Icons.menu),
        onPressed: _toggleMenu,
      ),
    );
  }
}
