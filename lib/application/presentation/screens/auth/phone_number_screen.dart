import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lilac_chat/application/controllers/auth/auth_controller.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/utils/snackbar/flutter_tost.dart';
import 'package:lilac_chat/application/presentation/widgets/custom_event_button.dart';
import 'package:lilac_chat/application/presentation/widgets/loading_indicator.dart';
import 'package:lilac_chat/domain/models/auth/send_otp_model/attributes.dart';
import 'package:lilac_chat/domain/models/auth/send_otp_model/data.dart';
import 'package:lilac_chat/domain/models/auth/send_otp_model/send_otp_model.dart';

class ScreenPhoneNumber extends StatelessWidget {
  const ScreenPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              adjustHieght(40.h),

              // Title
              Center(
                child: Text(
                  "Enter your phone\nnumber",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              adjustHieght(25.h),

              // Phone Input Field
              IntlPhoneField(
                disableLengthCheck: false,
                decoration: InputDecoration(
                  hintText: '8087808780',

                  prefixIcon: const Icon(
                    Icons.phone_iphone_rounded,
                    color: Colors.black,
                  ),
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: kprimary, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                initialCountryCode: 'IN',

                onChanged: (phone) {
                  authController.phoneNumber.text = phone.number;
                },
              ),

              adjustHieght(5.h),

              // Info Text
              Text(
                'Fliq will send you a text with a verification code.',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 13.sp,
                  color: kgrey,
                ),
              ),

              const Spacer(),
              Obx(
                () => authController.sendOtpLoading.value
                    ? CustomLoadingIndicator()
                    : CustomEventButton(
                        text: 'Next',
                        onTap: () {
                          if (authController.phoneNumber.text.isNotEmpty) {
                            authController.sendOtp(
                              sendOtp: SendOtpModel(
                                data: Data(
                                  attributes: Attributes(
                                    phone: testPhoneNumber,
                                  ),
                                ),
                              ),
                            );
                          } else {
                            showCustomToast(
                              message: 'Please enter your phone number',
                            );
                          }
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
