
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget sectionTitle(String title) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  ),
);

Widget switchTile(String title, String subtitle, bool value, ValueChanged<bool> onChanged) {
  return ListTile(
    leading:  SizedBox(width: 25,),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Switch(
      value: value,
      activeColor: Colors.black,
      activeTrackColor: Colors.green[400],
      onChanged: onChanged,
    ),
  );
}


class AllListTile extends StatefulWidget {
  final IconData? leading;
  final String? title;
  final String? subtitle;
  final GestureTapCallback? onTap;
  final  dynamic trailing;
  final  dynamic? isThreeLine;
  final  dynamic? dense;
  final  dynamic? visualDensity;
  final  dynamic? shape;
  final  dynamic? style;
  final  dynamic? selectedColor;
  final  dynamic? iconColor;
  final  dynamic? textColor;
  final  dynamic? titleTextStyle;
  final  dynamic? subtitleTextStyle;
  final  dynamic? leadingAndTrailingTextStyle;
  final  dynamic? contentPadding;
  final  dynamic? enabled;
  final  dynamic? onLongPress;
  final  dynamic? onFocusChange;
  final  dynamic? mouseCursor;
  final  dynamic? selected;
  final  dynamic? focusColor;
  final  dynamic? hoverColor;
  final  dynamic? splashColor;
  final  dynamic? focusNode;
  final  dynamic? autofocus;
  final  dynamic? tileColor;
  final  dynamic? selectedTileColor;
  final  dynamic? enableFeedback;
  final  dynamic? horizontalTitleGap;
  final  dynamic? minVerticalPadding;
  final  dynamic? minLeadingWidth;
  final  dynamic? minTileHeight;
  final  dynamic? titleAlignment;

  const AllListTile({super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.leadingAndTrailingTextStyle,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.onFocusChange,
    this.mouseCursor,
    this.selected = false,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.focusNode,
    this.autofocus = false,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.minTileHeight,
    this.titleAlignment,});

  @override
  State<AllListTile> createState() => _AllListTileState();
}

class _AllListTileState extends State<AllListTile> {
  @override
  Widget build(BuildContext context) {
    return
      ListTile(
        leading: Icon(widget.leading),
        title: Text(widget.title!),
        subtitle: Text(widget.subtitle!),
        trailing: Icon(widget.trailing),
        onTap: () => widget.onTap?.call(),
      );
  }
}



