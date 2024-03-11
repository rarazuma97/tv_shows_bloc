import 'dart:math';

import 'package:flutter/material.dart';

class LayoutUtils {
  static const _reference = Size(375, 812);
  static double _textScaleFactor = 1;
  static double get textScaleFactor => _textScaleFactor;

  static void updateScaleFactor(BuildContext context,
      {double existingFactor = 1.0}) {
    final actual = MediaQuery.of(context).size;

    final ratio =
        (actual.height * actual.width) / (_reference.height * _reference.width);
    _textScaleFactor = max(ratio, existingFactor);
  }

  static const _kReferenceFallbackthreshold = 0.5;
  static double viewportHeightFraction(BuildContext context, double fraction,
          {double? reference}) =>
      min(
        _normalize(
              MediaQuery.of(context).size.height * fraction,
              reference,
            ) *
            textScaleFactor,
        fraction * _reference.height,
      );

  static double viewportWidthFraction(BuildContext context, double fraction,
          {double? reference}) =>
      _normalize(
        MediaQuery.of(context).size.width * fraction,
        reference,
      );

  static double referenceHeight(BuildContext context, double value) =>
      viewportHeightFraction(
        context,
        value / _reference.height,
      );
  static double referenceWidth(BuildContext context, double value) =>
      viewportWidthFraction(
        context,
        value / _reference.width,
      );

  static _normalize(double value, double? reference) {
    reference ??= value;
    if ((1 - (value / reference)).abs() > _kReferenceFallbackthreshold) {
      return reference;
    } else {
      return value;
    }
  }

  static double h16(BuildContext context) =>
      viewportHeightFraction(context, 0.02, reference: 16.0);

  static double w16(BuildContext context) =>
      viewportWidthFraction(context, 0.043, reference: 16.0);
}
