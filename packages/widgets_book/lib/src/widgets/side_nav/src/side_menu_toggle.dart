// ignore_for_file: avoid_dynamic_calls, prefer_null_aware_method_calls

import 'package:flutter/material.dart';
import 'package:widgets_book/src/widgets/side_nav/src/global/global.dart';
import 'package:widgets_book/src/widgets/side_nav/src/side_menu_display_mode.dart';

class SideMenuToggle extends StatefulWidget {
  const SideMenuToggle({
    required this.onTap, super.key,
  });
  final Function? onTap;

  @override
  State<SideMenuToggle> createState() => _SideMenuToggleState();
}

class _SideMenuToggleState extends State<SideMenuToggle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top:
              Global.displayModeState.value == SideMenuDisplayMode.open ? 4 : 0,
          right: Global.displayModeState.value == SideMenuDisplayMode.open
              ? 0
              : 2,),
      child: IconButton(
        color: Global.style.toggleColor,
        icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, anim) => RotationTransition(
                  turns: child.key == const ValueKey('Sidemenu_icon1')
                      ? Tween<double>(begin: 1, end: 0.5).animate(anim)
                      : Tween<double>(begin: 0.5, end: 1).animate(anim),
                  child: FadeTransition(opacity: anim, child: child),
                ),
            child: Global.style.displayMode == SideMenuDisplayMode.open
                ? const Icon(
                    Icons.navigate_next,
                    key: ValueKey('Sidemenu_icon1'),
                    size: 30,
                  )
                : const Icon(
                    Icons.navigate_next,
                    key: ValueKey('Sidemenu_icon2'),
                    size: 30,
                  ),),
        onPressed: () {
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
      ),
    );
  }
}
