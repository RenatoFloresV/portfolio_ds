import 'package:flutter/material.dart';

class DsBtnSegmented extends StatelessWidget {
  const DsBtnSegmented({
    super.key,
    required this.selected,
    required this.segments,
    this.onSelectionChanged,
  });

  final Set<dynamic> selected;
  final List<ButtonSegment<dynamic>> segments;
  final void Function(Set<dynamic>)? onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      key: key,
      selected: selected,
      onSelectionChanged: onSelectionChanged,
      segments: segments,
    );
  }
}
