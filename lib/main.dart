import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:lilac_chat/application/presentation/routes/routes_generators.dart';
import 'package:lilac_chat/application/presentation/theme/app_theme.dart';
import 'package:lilac_chat/domain/core/bindings/all_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    // Locking the app to portrait mode
    // This is useful for apps that are designed to be used in portrait mode only
    // If you want to support landscape mode, you can remove this line
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'Lilac Chat',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme(),
        darkTheme: AppThemes.lightTheme(),
        initialBinding: AllControllerBindings(),
        getPages: RoutesGenerator.routes,
      ),
    );
  }
}
