import 'dart:async';
import 'dart:math' as math;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:michaeldeveloper/src/core/assets/assets.gen.dart';
import 'package:michaeldeveloper/src/core/constant/style/colors.dart';
import 'package:michaeldeveloper/src/core/router/router.dart';
import 'package:michaeldeveloper/src/core/utils/extensions/extensions.dart';
import 'package:stream_transform/stream_transform.dart';

/// {@template recourse_item.dart}
/// A widget that displays a resource item.
/// {@endtemplate}
class ResourceItem extends StatefulWidget {
  /// {@macro recourse_item.dart}
  const ResourceItem({
    super.key,
    required this.asset,
    required this.type,
    this.color,
  });

  /// {@macro recourse_item.dart}
  factory ResourceItem.github(BuildContext context) => ResourceItem(
        asset: Assets.icons.github.path,
        color: context.colors.light,
        type: 'github',
      );

  /// {@macro recourse_item.dart}
  factory ResourceItem.linkedIn(BuildContext context) => ResourceItem(
        asset: Assets.icons.linkedin.path,
        color: context.colors.amber,
        type: 'linkedin',
      );

  /// {@macro recourse_item.dart}
  factory ResourceItem.telegram() => ResourceItem(
        asset: Assets.icons.telegram.path,
        type: 'telegram',
      );

  /// the resource asset to show
  final String asset;

  /// the resource color to show
  final Color? color;

  /// the resource link the user can go to
  final String type;

  @override
  State<ResourceItem> createState() => _ResourceItemState();
}

class _ResourceItemState extends State<ResourceItem>
    with TickerProviderStateMixin {
  late final Animation<double> animationSize;
  late final Animation<double> animationAngle;
  late final AnimationController controller;

  late final StreamController<_AnimationState> streamController;
  late final Stream<_AnimationState> stream;

  @override
  void initState() {
    super.initState();
    streamController = StreamController<_AnimationState>();
    stream = streamController.stream.debounce(
      const Duration(milliseconds: 300),
    );
    stream.listen((event) {
      if (event == _AnimationState.forward) {
        controller.forward();
      } else {
        controller.reverse();
      }
    });
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animationSize = Tween<double>(begin: 50, end: 60).animate(
      controller,
    );
    animationAngle = Tween<double>(begin: 0, end: -math.pi / 2).animate(
      controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationAngle,
      child: SvgPicture.asset(
        widget.asset,
        color: widget.color,
      ),
      builder: (context, child) {
        return SizedBox(
          height: animationSize.value,
          width: animationSize.value,
          child: GestureDetector(
            onTap: () {
              context.router.push(
                ResourcePreviewRoute(type: widget.type),
              );
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) async {
                streamController.sink.add(_AnimationState.forward);
              },
              onExit: (_) async {
                streamController.sink.add(_AnimationState.reverse);
              },
              child: Transform.rotate(
                angle: animationAngle.value,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}

enum _AnimationState {
  idle(),
  forward(),
  reverse();

  const _AnimationState();
}
