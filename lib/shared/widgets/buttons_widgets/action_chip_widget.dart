import 'package:flutter/material.dart';

class ActionChipWidget extends StatelessWidget {
  final Color? backgroundColor;
  final OutlinedBorder? shape;
  final String label;
  final void Function() onPressed;

  const ActionChipWidget({
    Key? key,
    this.backgroundColor,
    this.shape,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      backgroundColor: backgroundColor ?? Colors.white,
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
