import 'package:flutter/material.dart';

class DsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DsAppBar({
    super.key,
    this.title = '',
    this.actions = const [],
    this.leading,
    this.backgroundColor = Colors.transparent,
  });

  final String title;
  final List<Widget> actions;
  final Color backgroundColor;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title.isEmpty ? null : Text(title),
      centerTitle: true,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
