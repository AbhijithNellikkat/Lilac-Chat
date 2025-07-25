import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_chat/application/presentation/routes/routes.dart';

import 'package:lilac_chat/application/presentation/utils/constant.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _navigate(context);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInUpBig(
              from: 30,
              child: SizedBox(
                width: 150.w,
                child: Hero(tag: appLogo, child: Image.asset(appLogo)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigate(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 2000), () {
      Get.offAndToNamed(Routes.login);
    });
  }
}
