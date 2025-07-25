import 'package:dartz/dartz.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_model/otp_verify_model.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_response/otp_verify_response.dart';
import 'package:lilac_chat/domain/models/auth/send_otp_model/send_otp_model.dart';
import 'package:lilac_chat/domain/models/auth/send_otp_response/send_otp_response.dart';
import 'package:lilac_chat/domain/models/failure/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, SendOtpResponse>> sendOtp({
    required SendOtpModel sendOtpModel,
  });
  Future<Either<Failure, OtpVerifyResponse>> otpVerify({
    required OtpVerifyModel otpVerifyModel,
  });
}
