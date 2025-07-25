import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';

class EmptyRefreshIndicator extends StatelessWidget {
  const EmptyRefreshIndicator({
    super.key,
    this.shrinkWrap = false,
    // required this.onTap,
    this.scroll = false,
    required this.onRefresh,
    this.errorMessage =
        "Oops! Something went wrong. Please tap 'Try Again' to retry.",
    this.image,
    this.showTryAgain = true,
    this.textAnimate = false,
  });

  final VoidCallback onRefresh;
  // final VoidCallback onTap;
  final String errorMessage;
  final bool shrinkWrap;
  final bool showTryAgain;
  final String? image;
  final bool scroll;
  final bool textAnimate;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
        await Future.delayed(const Duration(milliseconds: 1500));
      },
      child: FadeIn(
        animate: true,
        child: ListView(
          physics: scroll
              ? const AlwaysScrollableScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          shrinkWrap: shrinkWrap,
          children: [
            image != null
                ? Image.asset(image!)
                : Icon(Icons.refresh, color: kgrey),
            Center(
              child: Text(
                errorMessage,
                style: Theme.of(
                  context,
                ).textTheme.displaySmall?.copyWith(fontSize: 12, color: kgrey),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InternetConnectionLostWidget extends StatelessWidget {
  const InternetConnectionLostWidget({
    required this.onTap,
    this.showImage = true,
    this.showTRyAgain = false,
    this.shrinkWrap = false,
    super.key,
  });
  final VoidCallback onTap;
  final bool? showImage;
  final bool? showTRyAgain;
  final bool? shrinkWrap;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap ?? false,
      children: [
        adjustHieght(15),
        if (showImage == true) Image.asset(noInternetImage),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            'Maybe you are not connected to the internet ?',
            style: Theme.of(
              context,
            ).textTheme.displaySmall?.copyWith(fontSize: 13),
          ),
        ),
        adjustHieght(5),
        Center(
          child: Text(
            'Please check your connection and try again.',
            style: Theme.of(
              context,
            ).textTheme.displaySmall?.copyWith(fontSize: 10, color: kgrey),
            textAlign: TextAlign.center,
          ),
        ),
        adjustHieght(5),
        if (showTRyAgain == true)
          Center(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 45,
                width: 130,
                decoration: BoxDecoration(
                  color: kblack,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Try Again',
                    style: Theme.of(
                      context,
                    ).textTheme.displaySmall?.copyWith(color: kwhite),
                  ),
                ),
              ),
            ),
          ),
        const SizedBox(width: double.infinity),
      ],
    );
  }
}
