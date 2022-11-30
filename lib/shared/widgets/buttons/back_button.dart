import 'package:flutter/material.dart';

import '../../shared.dart';

class DefaultBackButton extends StatelessWidget {
  const DefaultBackButton({
    required this.label,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: kDarkGrey,
        borderRadius: kBorderRadius,
      ),
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.arrow_back_ios, color: kBlack),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyTextBold.copyWith(
                      fontSize: 14,
                      color: kBlack,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
