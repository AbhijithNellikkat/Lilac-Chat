import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lilac_chat/application/controllers/chat/chat_controller.dart';
import 'package:lilac_chat/application/controllers/internet/internet_connection.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/utils/images/network_image_with_loader.dart';
import 'package:lilac_chat/application/presentation/utils/refresh_indicator/empty_refresh_indicator.dart';
import 'package:lilac_chat/application/presentation/utils/shimmer/shimmer.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();
    final InternetConnectionController internetConnectionController =
        Get.find<InternetConnectionController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Obx(() {
        return RefreshIndicator(
          onRefresh: () async {
            await chatController.fetchAllChats();
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              adjustHieght(10.h),

              // Horizontal users list
              SizedBox(
                height: 120.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: chatController.allChats.length,
                    separatorBuilder: (context, index) => adjustWidth(14),
                    itemBuilder: (context, index) {
                      final user = chatController.allChats[index];
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            child: NetworkImageWithLoader(
                              user.profilePhotoUrl ?? '',
                              radius: 50,
                            ),
                          ),
                          adjustHieght(5.h),
                          Text(
                            user.name ?? '',
                            style: Theme.of(
                              context,
                            ).textTheme.displaySmall?.copyWith(fontSize: 13.sp),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),

              // Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onTapUpOutside: (_) {
                    FocusScope.of(context).unfocus();
                  },
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall?.copyWith(fontSize: 16.sp),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.displaySmall?.copyWith(fontSize: 14.sp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: kBorderRadius50,
                      borderSide: const BorderSide(color: kgrey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: kBorderRadius50,
                      borderSide: const BorderSide(color: kprimary, width: 1),
                    ),
                  ),
                ),
              ),

              adjustHieght(20.h),

              // "Chat" label
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ShimmerLoader(
                    itemCount: 7,
                    height: 60,
                    width: double.infinity,
                    seprator: adjustHieght(10),
                  ),
                )
              else if (!internetConnectionController
                      .isConnectedToInternet
                      .value &&
                  chatController.allChats.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
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
              // Chat list
              else
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chatController.allChats.length,
                  separatorBuilder: (context, index) => adjustHieght(10.h),
                  itemBuilder: (context, index) {
                    final user = chatController.allChats[index];

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
                      title: Text(
                        user.name ?? '',
                        style: Theme.of(context).textTheme.displaySmall
                            ?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                            ),
                      ),
                      leading: CircleAvatar(
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
          ),
        );
      }),
    );
  }
}
