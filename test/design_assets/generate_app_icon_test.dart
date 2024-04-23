import 'package:app_store_screenshots/app_store_screenshots.dart';
import 'package:flutter/material.dart';
import 'package:konjugator/core/theme/theme.dart';
import 'package:konjugator/core/ui/app_icon.dart';

void main() {
  generateAppIcon(
    onBuildIcon: () => Theme(
      data: appTheme,
      child: const AppIcon(
        border: AppIconBorder.none,
        size: 512,
      ),
    ),
  );

  generateAppIconAndroidForeground(
    padding: const EdgeInsets.all(96),
    onBuildIcon: () => Theme(
      data: appTheme,
      child: const AppIcon(
        border: AppIconBorder.none,
        size: 512 - 96 * 2,
        hasTransparentBackground: true,
        // hasSpacer: false,
      ),
    ),
  );
}
