import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lilac_chat/application/controllers/chat/chat_controller.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          controller: chatController.searchController,
          onChanged: (value) {
            chatController.searchQuery.value = value;
            chatController.filterChats();
          },
          onTapUpOutside: (_) {
            FocusScope.of(context).unfocus();
          },
          style: Theme.of(
            context,
          ).textTheme.displaySmall?.copyWith(fontSize: 16.sp),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                chatController.searchQuery.value.isNotEmpty
                    ? Icons.close_sharp
                    : Iconsax.search_favorite,
                color: kblack.withOpacity(0.7),
              ),
              onPressed: () {
                if (chatController.searchQuery.value.isNotEmpty) {
                  chatController.searchController.clear();
                  chatController.searchQuery.value = '';
                  chatController.filterChats();
                  FocusScope.of(context).unfocus();
                }
              },
            ),
            hintText: 'Search',
            hintStyle: Theme.of(
              context,
            ).textTheme.displaySmall?.copyWith(fontSize: 14.sp),
            enabledBorder: OutlineInputBorder(
              borderRadius: kBorderRadius50,
              borderSide: BorderSide(color: kgrey.withOpacity(0.4), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: kBorderRadius50,
              borderSide: BorderSide(color: kgrey.withOpacity(0.4), width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
