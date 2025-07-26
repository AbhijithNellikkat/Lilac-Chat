import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_chat/application/controllers/auth/auth_controller.dart';
import 'package:lilac_chat/application/controllers/internet/internet_connection.dart';

import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/utils/snackbar/flutter_tost.dart';
import 'package:lilac_chat/application/presentation/widgets/custom_event_button.dart';
import 'package:lilac_chat/application/presentation/widgets/loading_indicator.dart';
import 'package:pinput/pinput.dart';

class ScreenOtpVerification extends StatelessWidget {
  const ScreenOtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final InternetConnectionController internetConnectionController =
        Get.find<InternetConnectionController>();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              adjustHieght(40.h),

              Center(
                child: Text(
                  "Enter your verification\ncode",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              adjustHieght(25.h),
              Row(
                children: [
                  Text(
                    testPhoneNumber,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 13.sp,
                      color: kblack.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    ' Edit.',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 13.sp,
                      color: kblack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              adjustHieght(10.h),
              Pinput(
                mainAxisAlignment: MainAxisAlignment.start,

                length: 6,
                controller: authController.otpController,
                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  textStyle: Theme.of(
                    context,
                  ).textTheme.displayMedium?.copyWith(fontSize: 22),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: kgrey.withOpacity(0.04),
                        offset: const Offset(0, 6),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                    border: Border.all(color: klightgrey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              adjustHieght(12.h),

              Text(
                'Didn’t get anything? No worries, let’s try again.',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 13.sp,
                  color: kblack.withOpacity(0.7),
                ),
              ),
              Text(
                'Resent',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 13.sp,
                  color: kfbclr,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),
              Obx(
                () => authController.verifyOtpLoading.value
                    ? CustomLoadingIndicator()
                    : CustomEventButton(
                        text: 'Verify',
                        onTap: () {
                          if (!internetConnectionController
                              .isConnectedToInternet
                              .value) {
                            showCustomToast(
                              backgroundColor: kred,
                              message:
                                  "Internet connection is required to continue. Please connect to the internet and try again.",
                            );

                            return;
                          }
                          authController.otpVerification();
                        },
                        showGradiant: true,
                        color: LinearGradient(colors: [klightpink, kprimary]),
                        width: double.infinity,
                        hieght: 45.h,
                        textColr: kwhite,
                      ),
              ),
              adjustHieght(15.h),
            ],
          ),
        ),
      ),
    );
  }
}
