import 'package:flutter/material.dart';
import 'package:konjugator/core/theme/theme.dart';

enum AppIconBorder {
  none,
  round,
  iOS,
  androidRoundRect,
}

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    this.size = 512,
    this.border = AppIconBorder.iOS,
    this.hasTransparentBackground = false,
  });

  final double size;
  final AppIconBorder border;
  final bool hasTransparentBackground;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: size * 0.85,
      height: 1,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontFamily: AppFonts.aleo,
      color: const Color(0xff425A79),
    );

    return Container(
      width: size,
      height: size,
      color: hasTransparentBackground ? null : Theme.of(context).scaffoldBackgroundColor,
      child: _IconClipper(
        border: border,
        size: size,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: size * 0.12,
                child: Text(
                  'K',
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconClipper extends StatelessWidget {
  const _IconClipper({
    required this.border,
    required this.size,
    required this.child,
  });

  final AppIconBorder border;
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return switch (border) {
      AppIconBorder.none => child,
      AppIconBorder.iOS => ClipRRect(
          borderRadius: BorderRadius.circular(size * 0.2237),
          child: child,
        ),
      AppIconBorder.androidRoundRect => ClipRRect(
          borderRadius: BorderRadius.circular(size * 0.0833),
          child: child,
        ),
      AppIconBorder.round => ClipOval(
          child: child,
        ),
    };
  }
}
