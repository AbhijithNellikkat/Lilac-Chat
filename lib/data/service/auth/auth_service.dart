import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:lilac_chat/data/service/api_service.dart';
import 'package:lilac_chat/domain/core/api_endpoints/api_endpoints.dart';
import 'package:lilac_chat/domain/models/auth/otp_verification_response/otp_verification_response.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_model/otp_verify_model.dart';

import 'package:lilac_chat/domain/models/auth/send_otp_model/send_otp_model.dart';
import 'package:lilac_chat/domain/models/auth/send_otp_response/send_otp_response.dart';
import 'package:lilac_chat/domain/models/failure/failure.dart';
import 'package:lilac_chat/domain/repository/auth_repo.dart';

class AuthService implements AuthRepo {
  final ApiService apiService = ApiService();
  @override
  Future<Either<Failure, OtpVerificationResponse>> otpVerify({
    required OtpVerifyModel otpVerifyModel,
  }) async {
    try {
      final response = await apiService.post(
        ApiEndpoints.verifyOtp,
        isJapx: true,
        data: otpVerifyModel.toJson(),
        addHeader: false,
      );

      final result = OtpVerificationResponse.fromJson(response['data']);

      // log('OTP VERIFICATION RESULT : $result');
      return Right(result);
    } catch (e) {
      return Left(Failure(message: 'OTP Verification failed', data: e));
    }
  }

  @override
  Future<Either<Failure, SendOtpResponse>> sendOtp({
    required SendOtpModel sendOtpModel,
  }) async {
    try {
      final response = await apiService.post(
        ApiEndpoints.sendOtp,
        data: sendOtpModel.toJson(),
        addHeader: false,
      );

      final result = SendOtpResponse.fromJson(response);

      return Right(result);
    } catch (e) {
      return Left(Failure(message: 'Send OTP failed', data: e));
    }
  }
}
