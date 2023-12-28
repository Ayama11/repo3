import 'package:flutter/material.dart';
import 'package:repopharma_app/widgets/header_home_view.dart/custom_clip.dart';

class CurveWidget extends StatelessWidget {
  const CurveWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CustomClipP(), child: child);
  }
}
