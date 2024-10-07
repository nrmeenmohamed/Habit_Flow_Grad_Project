import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habitflow/core/managers/color_manager.dart';
import '../../core/managers/style_manager.dart';

const List<String> list = <String>['option 1', 'option 2', 'option 3', 'option 4'];

class CustomDropdownMenu extends StatefulWidget {
  const CustomDropdownMenu({super.key});
  @override
  State<CustomDropdownMenu> createState() => _CustomDropdownMenu();
}

class _CustomDropdownMenu extends State<CustomDropdownMenu> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 200.w,
      menuStyle: const MenuStyle(backgroundColor:  MaterialStatePropertyAll<Color>(ColorManager.secondaryColor)),
      textStyle: StyleManager.mediumText(color: Colors.white),
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value,style: const ButtonStyle(foregroundColor: MaterialStatePropertyAll<Color>(Colors.white)));
      }).toList(),
    );
  }
}
