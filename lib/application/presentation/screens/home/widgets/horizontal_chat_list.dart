import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/utils/images/network_image_with_loader.dart';
import 'package:lilac_chat/application/presentation/utils/shimmer/shimmer.dart';

import '../../../../controllers/chat/chat_controller.dart';

class HorizontalChatList extends StatelessWidget {
  const HorizontalChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();
    return Obx(
      () => chatController.chatsLoading.value
          ? SizedBox(
              height: 120.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (context, index) => adjustWidth(14),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ShimmerLoaderTileCircle(radius: 35),
                        adjustHieght(5.h),
                        ShimmerLoaderTile(height: 8, width: 40),
                        adjustHieght(3.h),
                        ShimmerLoaderTile(height: 8, width: 80),
                      ],
                    );
                  },
                ),
              ),
            )
          : SizedBox(
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
                          backgroundColor: kprimary.withOpacity(0.4),
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
    );
  }
}
