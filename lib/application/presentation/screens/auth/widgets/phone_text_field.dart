import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';

import '../../../../controllers/auth/auth_controller.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return IntlPhoneField(
      disableLengthCheck: false,
      decoration: InputDecoration(
        hintText: '8087808780',
        suffixIcon: const Icon(Icons.phone_iphone_rounded, color: kgrey),

        hintStyle: Theme.of(
          context,
        ).textTheme.displaySmall?.copyWith(fontSize: 15.sp, color: kgrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kgrey, width: 1),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kgrey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kprimary, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kgrey, width: 1),
        ),
      ),
      initialCountryCode: 'IN',

      pickerDialogStyle: PickerDialogStyle(
        searchFieldInputDecoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kprimary, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kgrey, width: 1),
          ),
        ),
        countryNameStyle: Theme.of(
          context,
        ).textTheme.displaySmall?.copyWith(fontSize: 13.sp),
        countryCodeStyle: Theme.of(
          context,
        ).textTheme.displaySmall?.copyWith(fontSize: 13.sp),
      ),

      flagsButtonMargin: EdgeInsets.only(left: 10),
      onChanged: (phone) {
        authController.phoneNumber.text = phone.number;
      },
    );
  }
}
