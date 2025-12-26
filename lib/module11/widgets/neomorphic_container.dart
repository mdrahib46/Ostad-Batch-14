
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
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: height ?? 170,
      width: height ?? 170,
      decoration: BoxDecoration(
        color: isDark ? Color(0xFF1F1F1F) : Colors.blue.shade50,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        boxShadow:
        boxShadow ??
            [
              BoxShadow(
                color: isDark ? Color(0xFF141414) : Colors.white.withOpacity(0.9),
                offset: const Offset(-6, -6),
                blurRadius: 10,
              ),
              BoxShadow(
                color:  isDark ? Color(0xFF2A2A2A) : Colors.blue.withOpacity(0.2),
                offset: const Offset(4, 4),
                blurRadius: 10,
              ),
            ],
      ),
      child: child,
    );
  }
}