import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:task5/core/utils/size_config.dart';

class WidgetType extends ConsumerWidget {
  final String cardType;
  final VoidCallback function;
  final StateProvider<bool> provider;
  const WidgetType(
    this.provider, {
    super.key,
    required this.cardType,
    required this.function,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconChange = ref.watch(provider);
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: function,
            child: Container(
              // height: SizeConfig.screenWidth * 0.086,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.02,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.screenWidth * 0.02),
                child: Row(
                  spacing: SizeConfig.screenWidth * 0.02,
                  children: [
                    Image.asset(
                      "assets/pin.png",
                      height: SizeConfig.screenWidth * 0.05,
                    ),
                    Text(
                      cardType,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: SizeConfig.screenWidth * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    iconChange
                        ? HugeIcon(icon: HugeIcons.strokeRoundedArrowUp01)
                        : HugeIcon(icon: HugeIcons.strokeRoundedArrowDown01),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth * 0.01),
        HugeIcon(
          icon: HugeIcons.strokeRoundedDragDropHorizontal,

          color: Colors.grey,
        ),
      ],
    );
  }
}
