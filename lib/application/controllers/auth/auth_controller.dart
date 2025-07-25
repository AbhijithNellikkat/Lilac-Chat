import 'dart:developer';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lilac_chat/application/presentation/routes/routes.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/utils/snackbar/flutter_tost.dart';
import 'package:lilac_chat/data/service/auth/auth_service.dart';
import 'package:lilac_chat/data/service/device_meta_service.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_model/attributes.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_model/data.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_model/device_meta.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:lilac_chat/domain/models/auth/send_otp_model/send_otp_model.dart';
import 'package:lilac_chat/domain/repository/auth_repo.dart';

class AuthController extends GetxController {
  final AuthRepo authService = AuthService();

  RxBool sendOtpLoading = false.obs;
  RxBool verifyOtpLoading = false.obs;

  TextEditingController phoneNumber = TextEditingController();
  TextEditingController otpController = TextEditingController();

  // Send otp
  Future<void> sendOtp({required SendOtpModel sendOtp}) async {
    sendOtpLoading.value = true;
    final result = await authService.sendOtp(sendOtpModel: sendOtp);
    result.fold(
      (failure) {
        sendOtpLoading.value = false;
      },
      (success) async {
        sendOtpLoading.value = false;
        phoneNumber.clear();
        showCustomToast(message: '${success.message}');

        Get.toNamed(Routes.otpVerification);
      },
    );
  }

  // Verify otp
  Future<void> otpVerification() async {
    verifyOtpLoading.value = true;

    final deviceMeta = await DeviceMetaService.getMobileDeviceMeta();

    final model = OtpVerifyModel(
      data: Data(
        type: 'registration_otp_codes',
        attributes: Attributes(
          phone: testPhoneNumber,
          otp: testOTP,
          deviceMeta: deviceMeta,
        ),
      ),
    );

    log('${model.data?.type}');

    final result = await authService.otpVerify(otpVerifyModel: model);
    result.fold(
      (failure) {
        verifyOtpLoading.value = false;
        showCustomToast(message: 'Verification failed: ${failure.toString()}');
      },
      (success) async {
        verifyOtpLoading.value = false;
        showCustomToast(message: 'OTP verified successfully!');
        Get.toNamed(Routes.home);
      },
    );
  }
}
