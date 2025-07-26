import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lilac_chat/application/presentation/utils/colors.dart';

import 'package:shimmer/shimmer.dart';

class ShimmerLoaderTile extends StatelessWidget {
  const ShimmerLoaderTile({
    super.key,
    this.height,
    this.width,
    this.baseColor,
    this.padding = const EdgeInsets.all(0),
    this.boxDecoration = const BoxDecoration(
      color: klightgrey,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    this.highlightColor,
  });

  final double? width;
  final double? height;
  final Color? baseColor;
  final Color? highlightColor;
  final BoxDecoration? boxDecoration;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Shimmer.fromColors(
        baseColor:
            baseColor ??
            Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        highlightColor: baseColor ?? Theme.of(context).scaffoldBackgroundColor,
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: klightgrey,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class ChatListTileShimmer extends StatelessWidget {
  const ChatListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Row(
          children: [
            // Circle avatar shimmer
            Container(
              height: 50.r,
              width: 50.r,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 12.w),
            // Name and message shimmer
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name line
                  Container(
                    height: 10.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  // Message preview line
                  Container(
                    height: 9.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            // Timestamp shimmer
            Container(
              height: 10.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerLoaderTileCircle extends StatelessWidget {
  const ShimmerLoaderTileCircle({
    super.key,
    this.radius,
    this.width,
    this.baseColor,
    this.padding = const EdgeInsets.all(0),
    this.borderRadius,
    this.boxDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    this.highlightColor,
  });

  final double? width;
  final double? radius;
  final Color? baseColor;
  final Color? highlightColor;
  final BoxDecoration? boxDecoration;
  final EdgeInsets padding;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: CircleAvatar(
          backgroundColor: kgrey.withOpacity(0.6),
          radius: radius,
        ),
      ),
    );
  }
}

class ShimmerLoaderCircle extends StatelessWidget {
  const ShimmerLoaderCircle({
    super.key,
    required this.itemCount,
    this.highlightColor,
    this.baseColor,
    required this.radius,
    this.seprator = const SizedBox(),
    this.scrollDirection = Axis.vertical,
  });

  final int itemCount;
  final Axis scrollDirection;
  final Widget seprator;
  final Color? baseColor;
  final double radius;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => seprator,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: CircleAvatar(
            backgroundColor: kgrey.withOpacity(0.6),
            radius: radius,
          ),
        );
      },
    );
  }
}

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({
    super.key,
    required this.itemCount,
    required this.height,
    required this.width,
    this.highlightColor,
    this.baseColor,
    this.seprator = const SizedBox(),
    this.scrollDirection = Axis.vertical,
  });

  final int itemCount;
  final double height;
  final double width;
  final Axis scrollDirection;
  final Widget seprator;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => seprator,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor:
              baseColor ??
              Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          highlightColor:
              baseColor ?? Theme.of(context).scaffoldBackgroundColor,
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: klightgrey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        );
      },
    );
  }
}
