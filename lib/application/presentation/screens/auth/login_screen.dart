import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lilac_chat/application/presentation/routes/routes.dart';
import 'package:lilac_chat/application/presentation/screens/auth/widgets/auth_button.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(bgImage, fit: BoxFit.cover),
          Container(color: kblack.withOpacity(0.4)),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const Spacer(),
                  // Logo
                  FadeInDown(
                    from: 20,
                    animate: true,
                    child: CircleAvatar(
                      backgroundColor: kprimary,
                      radius: 28,
                      child: Image.asset(appLogo, fit: BoxFit.cover),
                    ),
                  ),
                  adjustHieght(20.h),

                  // Tagline
                  FadeInUp(
                    animate: true,
                    from: 20,
                    child: Text(
                      "Connect. Meet. Love.\nWith Fliq Dating",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  adjustHieght(190.h),
                  const Spacer(),
                  AuthButton(
                    icon: Image.asset(googleIcon, height: 20),
                    label: "Sign in with Google",
                    backgroundColor: Colors.white,
                    textColor: kblack,
                    onTap: () {},
                  ),

                  adjustHieght(10.h),

                  // Facebook Button
                  AuthButton(
                    icon: FaIcon(FontAwesomeIcons.facebookF, color: kwhite),
                    label: "Sign in with Facebook",
                    backgroundColor: kfbclr,
                    textColor: kwhite,
                    onTap: () {},
                  ),

                  adjustHieght(10.h),

                  // Phone Button
                  AuthButton(
                    icon: FaIcon(FontAwesomeIcons.phone, color: Colors.white),
                    label: "Sign in with phone number",
                    backgroundColor: kprimary,
                    textColor: kwhite,
                    onTap: () {
                      Get.toNamed(Routes.phoneNumber);
                    },
                  ),

                  adjustHieght(30.h),

                  // Terms & Privacy
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(color: kwhite, fontSize: 12),
                        children: const [
                          TextSpan(text: "By signing up, you agree to our "),
                          TextSpan(
                            text: "Terms",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: ". See how we use your data in our "),
                          TextSpan(
                            text: "Privacy Policy.",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
