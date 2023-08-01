import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class GlassmorphicFlexContainer extends StatelessWidget {
  GlassmorphicFlexContainer(
      {this.key,
      required this.child,
      this.alignment,
      this.padding,
      this.shape = BoxShape.rectangle,
      this.margin,
      this.transform,
      required this.borderRadius,
      required this.linearGradient,
      required this.border,
      required this.blur,
      required this.borderGradient,
      this.constraints,
      this.flex = 1})
      : assert(margin == null || margin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(
          flex >= 1,
          'Flex value can be less than 1 : $flex. Please Provide a flex value > 1',
        ),
        assert(constraints == null || constraints.debugAssertIsValid()),
        super(key: key);
  final Key? key;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final int flex;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final Widget child;
  final double borderRadius;
  final BoxShape shape;
  final BoxConstraints? constraints;
  final double border;
  final double blur;
  final LinearGradient linearGradient;
  final LinearGradient borderGradient;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AlignmentGeometry>(
        'alignment', alignment,
        showName: false, defaultValue: null));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('padding', padding,
        defaultValue: null));
    properties.add(DiagnosticsProperty<BoxConstraints>(
        'constraints', constraints,
        defaultValue: null));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('margin', margin,
        defaultValue: null));
    properties.add(ObjectFlagProperty<Matrix4>.has('transform', transform));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        key: key,
        alignment: alignment,
        padding: padding,
        constraints: const BoxConstraints.tightForFinite(),
        transform: transform,
        child: Stack(
          children: [
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(borderRadius),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur * 2),
                child: Container(
                  alignment: alignment ?? Alignment.topLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    gradient: linearGradient,
                  ),
                ),
              ),
            ),
            GlassmorphicBorder(
              strokeWidth: border,
              radius: borderRadius,
              gradient: borderGradient,
            ),
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GlassmorphicContainer extends StatelessWidget {
  const GlassmorphicContainer({
    Key? key,
    required this.child,
    this.alignment,
    this.padding,
    this.shape = BoxShape.rectangle,
    this.constraints,
    this.margin,
    this.transform,
    required this.width,
    this.height,
    required this.borderRadius,
    required this.linearGradient,
    required this.border,
    required this.blur,
    required this.borderGradient,
  }) : super(key: key);
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;

  final double width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final Widget child;
  final double borderRadius;
  final BoxShape shape;
  final BoxConstraints? constraints;

  final double border;
  final double blur;
  final LinearGradient linearGradient;
  final LinearGradient borderGradient;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AlignmentGeometry>(
        'alignment', alignment,
        showName: false, defaultValue: null));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('padding', padding,
        defaultValue: null));
    properties.add(DiagnosticsProperty<BoxConstraints>(
        'constraints', constraints,
        defaultValue: null));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('margin', margin,
        defaultValue: null));
    properties.add(ObjectFlagProperty<Matrix4>.has('transform', transform));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: width,
      margin: margin,
      alignment: alignment,
      constraints: constraints,
      height: height,
      transform: transform,
      child: Stack(
        alignment: alignment ?? Alignment.topLeft,
        children: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(borderRadius),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur * 2),
              child: Container(
                alignment: alignment ?? Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  gradient: linearGradient,
                ),
              ),
            ),
          ),
          GlassmorphicBorder(
            strokeWidth: border,
            radius: borderRadius,
            width: width,
            height: height,
            gradient: borderGradient,
          ),
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(borderRadius),
            child: Container(
              child: child,
              alignment: alignment,
            ),
          ),
        ],
      ),
    );
  }
}

class GlassmorphicBorder extends StatelessWidget {
  GlassmorphicBorder({
    required double strokeWidth,
    required double radius,
    required Gradient gradient,
    this.height,
    this.width,
  })  : this._painter = _GradientPainter(
          strokeWidth: strokeWidth,
          radius: radius,
          gradient: gradient,
        ),
        this._radius = radius;
  final _GradientPainter _painter;
  final double _radius;
  final width;
  final height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      size: MediaQuery.sizeOf(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(_radius)),
        ),
        width: width,
        height: height,
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  _GradientPainter(
      {required double strokeWidth,
      required double radius,
      required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;
  final double radius;
  final double strokeWidth;
  final Gradient gradient;
  final Paint paintObject = Paint();
  final Paint paintObject2 = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    final RRect innerRect2 = RRect.fromRectAndRadius(
        Rect.fromLTRB(strokeWidth, strokeWidth, size.width - (strokeWidth),
            size.height - (strokeWidth)),
        Radius.circular(radius - strokeWidth));

    final RRect outerRect = RRect.fromRectAndRadius(
        Rect.fromLTRB(0, 0, size.width, size.height), Radius.circular(radius));
    paintObject.shader = gradient.createShader(Offset.zero & size);

    final Path outerRectPath = Path()..addRRect(outerRect);
    final Path innerRectPath2 = Path()..addRRect(innerRect2);
    canvas.drawPath(
        Path.combine(
            PathOperation.difference,
            outerRectPath,
            Path.combine(
                PathOperation.intersect, outerRectPath, innerRectPath2)),
        paintObject);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
