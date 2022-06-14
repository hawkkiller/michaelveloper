import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
/// {@template recourse_item.dart}
/// A widget that displays a resource item.
/// {@endtemplate}
class ResourceItem extends StatelessWidget {
  /// {@macro recourse_item.dart}
  const ResourceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: SvgPicture.asset(
        'assets/icons/linkedin.svg',
        color: Colors.amber,
      ),
    );
  }
}
