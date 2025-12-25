
import 'package:flutter/material.dart';


class NeomorphicContainer extends StatelessWidget {
  const NeomorphicContainer({
    super.key,
    this.height, this.width,
    this.borderRadius,
    required this.child,
    this.backgroundColor,
    this.boxShadow,
  });

  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final Widget child;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 170,
      width: height ?? 170,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        boxShadow:
        boxShadow ??
            [
              BoxShadow(
                color: Colors.white.withOpacity(0.9),
                offset: const Offset(-6, -6),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                offset: const Offset(4, 4),
                blurRadius: 10,
              ),
            ],
      ),
      child: child,
    );
  }
}