import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lilac_chat/application/controllers/internet/internet_connection.dart';
import 'package:lilac_chat/application/presentation/routes/routes.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/utils/images/network_image_with_loader.dart';
import 'package:lilac_chat/application/presentation/utils/refresh_indicator/empty_refresh_indicator.dart';
import 'package:lilac_chat/application/presentation/utils/shimmer/shimmer.dart';
import 'package:lilac_chat/data/shared_pref/shared_pref.dart';

import '../../../../controllers/chat/chat_controller.dart';

class VerticalChatList extends StatelessWidget {
  const VerticalChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();
    final InternetConnectionController internetConnectionController =
        Get.find<InternetConnectionController>();
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Chat',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          adjustHieght(20.h),

          // Loading shimmer
          if (chatController.chatsLoading.value)
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemBuilder: (context, index) => const ChatListTileShimmer(),
            )
          else if (!internetConnectionController.isConnectedToInternet.value &&
              chatController.allChats.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: InternetConnectionLostWidget(
                shrinkWrap: true,
                onTap: () => chatController.fetchAllChats(),
              ),
            )
          // Empty state
          else if (chatController.allChats.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: EmptyRefreshIndicator(
                shrinkWrap: true,
                onRefresh: () => chatController.fetchAllChats(),
                image: emptyDataImage,
                errorMessage: 'No chats yet. Start a conversation!',
              ),
            )
          else if (chatController.filteredChats.isEmpty &&
              chatController.searchQuery.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: EmptyRefreshIndicator(
                shrinkWrap: true,
                onRefresh: () => chatController.fetchAllChats(),
                image: emptyDataImage,
                errorMessage: 'No chats found matching your search.',
              ),
            )
          // Chat list
          else
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: chatController.filteredChats.length,
              separatorBuilder: (context, index) => adjustHieght(10.h),
              itemBuilder: (context, index) {
                final user = chatController.filteredChats[index];

                // formatted lastActiveAt
                String formattedTime = '';

                try {
                  formattedTime = DateFormat.jm().format(
                    user.lastActiveAt!.toLocal(),
                  );
                } catch (e) {
                  formattedTime = '';
                }

                return ListTile(
                  onTap: () async {
                    final senderId = await SharedPref.getUserId() ?? '';
                    Get.toNamed(
                      Routes.chat,
                      arguments: {
                        'index': index,
                        'currentUserId': senderId,
                        'isOnline': user.isOnline,
                        'name': user.name,
                        'profileImage': user.profilePhotoUrl,
                      },
                    );

                    chatController.fetchMessages(
                      senderId: senderId,
                      receiverId: user.id ?? '',
                    );
                  },
                  title: Text(
                    user.name ?? '',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: kprimary.withOpacity(0.4),
                    radius: 25,
                    child: NetworkImageWithLoader(
                      user.profilePhotoUrl ?? '',
                      radius: 50,
                    ),
                  ),
                  trailing: Text(formattedTime),
                );
              },
            ),
        ],
      );
    });
  }
}
