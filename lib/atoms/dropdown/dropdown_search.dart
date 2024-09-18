import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_ds/lib.dart';

class DsDropdownFormFieldWithSearch extends StatefulWidget {
  const DsDropdownFormFieldWithSearch({
    super.key,
    required this.label,
    this.placeholder = '',
    required this.items,
    this.priorityItems = const [],
    required this.onChanged,
    required this.initialValue,
    this.limitedItems = false,
    this.validator,
  });

  final String label;
  final String placeholder;
  final List<DsDropdownOption> items;
  final List<DsDropdownOption> priorityItems;

  final void Function(DsDropdownOption) onChanged;
  final String initialValue;
  final bool limitedItems;
  final String? Function(String?)? validator;

  @override
  State<DsDropdownFormFieldWithSearch> createState() =>
      _DsDropdownFormFieldWithSearchState();
}

class _DsDropdownFormFieldWithSearchState
    extends State<DsDropdownFormFieldWithSearch> {
  late TextEditingController controller;

  late DsDropdownOption itemSelected;

  @override
  void initState() {
    final item = getLabelById(widget.initialValue);

    itemSelected = item;

    controller = TextEditingController(text: item.label);
    super.initState();
  }

  DsDropdownOption getLabelById(String id) =>
      [...widget.items, ...widget.priorityItems].firstWhere(
        (item) => item.id == id,
        orElse: () => const DsDropdownOption(id: '', label: ''),
      );

  @override
  Widget build(BuildContext context) {
    return DsTextField(
      validator: widget.validator,
      label: widget.label,
      placeholder: widget.placeholder,
      readOnly: true,
      controller: controller,
      suffixIcon: const Icon(
        Icons.arrow_drop_down,
        size: 25,
      ),
      onTap: () async {
        final idSelected = await showDialog<String>(
          barrierDismissible: false,
          context: context,
          builder: (ctx) => DialogWithOption(
            itemSelected: itemSelected,
            items: widget.items,
            label: widget.label,
            priorityItems: widget.priorityItems,
          ),
        );
        final item = getLabelById(idSelected ?? '');
        controller.text = item.label;
        setState(() {
          itemSelected = item;
        });

        widget.onChanged(item);
      },
    );
  }
}

class DialogWithOption extends StatefulWidget {
  const DialogWithOption({
    super.key,
    required this.items,
    required this.itemSelected,
    required this.label,
    this.priorityItems = const [],
  });

  final List<DsDropdownOption> items;
  final List<DsDropdownOption> priorityItems;
  final DsDropdownOption itemSelected;
  final String label;

  @override
  State<DialogWithOption> createState() => _DialogWithOptionState();
}

class _DialogWithOptionState extends State<DialogWithOption> {
  List<DsDropdownOption> listFilter = [];

  bool isFiltering = false;

  @override
  void initState() {
    listFilter = [...widget.items, ...widget.priorityItems];
    super.initState();
  }

  Iterable<DsDropdownOption> _filterByval(String val) {
    return [...widget.items, ...widget.priorityItems].where(
      (item) => item.label.toLowerCase().contains(val.toLowerCase()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: const EdgeInsets.all(DsSpacing.zero),
        titlePadding: const EdgeInsets.symmetric(
            horizontal: DsSpacing.md, vertical: DsSpacing.sm),
        iconPadding: const EdgeInsets.all(DsSpacing.sm),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DsSpacing.md),
        ),
        insetPadding: const EdgeInsets.all(DsSpacing.sm),
        title: CupertinoSearchTextField(
          style: context.bodyMedium,
          onChanged: (val) {
            final newList = _filterByval(val).toList();

            setState(() {
              listFilter = newList;
              isFiltering = val.isNotEmpty;
            });
          },
        ),
        content: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.90,
          height: MediaQuery.sizeOf(context).height * 0.7,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DsVerticalSpace.md,
                      if (isFiltering) ...[
                        for (DsDropdownOption priority in listFilter)
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            key: Key(priority.id),
                            title: DsText(priority.label),
                            leading: priority.leading.isEmpty
                                ? null
                                : DsText(priority.leading),
                            selected: widget.itemSelected.id == priority.id,
                            onTap: () {
                              if (context.mounted &&
                                  Navigator.canPop(context)) {
                                Navigator.pop(context, priority.id);
                              }
                            },
                          ),
                      ] else ...[
                        for (DsDropdownOption priority in widget.priorityItems)
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            key: Key(priority.id),
                            title: DsText(priority.label),
                            leading: priority.leading.isEmpty
                                ? null
                                : DsText(priority.leading),
                            selected: widget.itemSelected.id == priority.id,
                            onTap: () {
                              if (context.mounted &&
                                  Navigator.canPop(context)) {
                                Navigator.pop(context, priority.id);
                              }
                            },
                          ),
                        const Divider(),
                        for (DsDropdownOption item in widget.items)
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            key: Key(item.id),
                            title: DsText(item.label),
                            leading: item.leading.isEmpty
                                ? null
                                : DsText(item.leading),
                            selected: widget.itemSelected.id == item.id,
                            onTap: () {
                              if (context.mounted &&
                                  Navigator.canPop(context)) {
                                Navigator.pop(context, item.id);
                              }
                            },
                          ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BackButton(
              onPressed: () {
                if (context.mounted && Navigator.canPop(context)) {
                  Navigator.pop(context, widget.itemSelected.id);
                }
              },
            ),
            Flexible(
              child: DsText(
                widget.label,
                style: context.titleSmall.bold(),
              ),
            ),
          ],
        ));
  }
}

class DsDropdownOption {
  const DsDropdownOption({
    required this.id,
    required this.label,
    this.customBool = false,
    this.leading = '',
  });

  final String id;
  final String label;
  final String leading;
  final bool customBool;

  @override
  String toString() {
    return id.toString();
  }
}
