import 'package:flutter/material.dart';
import 'dart:math' as math;  // Import the dart:math library with an alias

const double FIGMA_DESIGN_WIDTH = 428;
const double FIGMA_DESIGN_HEIGHT = 926;
const double FIGMA_DESIGN_STATUS_BAR = 0;

// Extension for responsive design metrics based on the device size
extension ResponsiveExtension on num {
  // Calculated based on the design's width
  double get h => ((this * SizeUtils.width) / FIGMA_DESIGN_WIDTH);
  // Calculated based on the design's height, subtracting the status bar height
  double get v => (this * (SizeUtils.height - FIGMA_DESIGN_STATUS_BAR)) / FIGMA_DESIGN_HEIGHT;
  // Returns the smaller dimension to adapt the size proportionally
  double get adaptSize => math.min(v, h);  // Use the min function from dart:math
  // Alias for font sizing directly using the adapted size
  double get fSize => adaptSize;
}

// Extension for formatting doubles
extension FormatExtension on double {
  // Formats a double to a fixed number of decimal places
  double toDoubleValue({int fractionDigits = 2}) => double.parse(toStringAsFixed(fractionDigits));
  // Ensures the value is non-zero, returns default if zero
  double isNonZero({double defaultValue = 0.0}) => this > 0 ? this : defaultValue;
}

// Enum for device types
enum DeviceType { mobile, tablet, desktop }

// Type definition for responsive builder
typedef ResponsiveBuild = Widget Function(BuildContext context, Orientation orientation, DeviceType deviceType);

// Sizer widget to handle responsive layouts
class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}) : super(key: key);

  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
              builder: (context, orientation) {
                SizeUtils.setScreenSize(constraints, orientation);
                return builder(context, orientation, SizeUtils.deviceType);
              }
          );
        }
    );
  }
}

// Utilities for size management
class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double height;
  static late double width;

  static void setScreenSize(BoxConstraints constraints, Orientation currentOrientation) {
    boxConstraints = constraints;
    orientation = currentOrientation;
    width = constraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
    height = constraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_HEIGHT);
    deviceType = determineDeviceType(width);
  }

  static DeviceType determineDeviceType(double width) {
    // Adjust the logic here to distinguish between mobile, tablet, and desktop
    return DeviceType.mobile;
  }
}
