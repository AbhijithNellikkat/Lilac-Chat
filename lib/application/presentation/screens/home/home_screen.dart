import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_chat/application/controllers/chat/chat_controller.dart';
import 'package:lilac_chat/application/presentation/screens/home/widgets/horizontal_chat_list.dart';
import 'package:lilac_chat/application/presentation/screens/home/widgets/search_bar.dart';
import 'package:lilac_chat/application/presentation/screens/home/widgets/vertical_chat_list.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/utils/snackbar/flutter_tost.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();

    DateTime? lastBackPressed;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        final now = DateTime.now();
        if (lastBackPressed == null ||
            now.difference(lastBackPressed!) > const Duration(seconds: 2)) {
          lastBackPressed = now;
          showCustomToast(message: 'Press back again to exit');
        } else {
          // Exit the app
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Messages'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await chatController.fetchAllChats();
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              adjustHieght(10.h),

              // Horizontal chat list
              HorizontalChatList(),

              // Search bar
              SearchBarWidget(),

              adjustHieght(20.h),

              // Vertical chat list
              VerticalChatList(),
            ],
          ),
        ),
      ),
    );
  }
}
