// ignore_for_file: unrelated_type_equality_checks

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:lilac_chat/application/controllers/chat/chat_controller.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';
import 'package:lilac_chat/application/presentation/widgets/loading_indicator.dart';
import 'package:lilac_chat/data/shared_pref/shared_pref.dart';

class ScreenChat extends StatelessWidget {
  const ScreenChat({
    super.key,
    required this.index,
    required this.currentUserId,
  });

  final int index;
  final String currentUserId;

  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () => Get.back(),
          ),
          titleSpacing: 0,
          title: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  appLogo,
                ), // Replace with actual avatar
                radius: 20,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Offline',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(Icons.circle, size: 10, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ],
          ),
          actions: const [SizedBox(width: 16)],
        ),
        body: Column(
          children: [
            Expanded(
              child: chatController.messagesLoading.value
                  ? CustomLoadingIndicator()
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      reverse: true,
                      itemCount: chatController.messages.length,
                      itemBuilder: (context, i) {
                        final msg = chatController.messages[i];
                        final isMe = msg.senderId == currentUserId;

                        return FadeInUp(
                          from: 20,
                          animate: true,
                          child: Align(
                            alignment: isMe
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: isMe
                                  ? CrossAxisAlignment.end
                                  : CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 6,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  constraints: BoxConstraints(maxWidth: 250.w),
                                  decoration: BoxDecoration(
                                    color: isMe ? kprimary : Colors.grey[200],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(
                                        isMe ? 16 : 0,
                                      ),
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(
                                        isMe ? 0 : 16,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    msg.message ?? '',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: isMe
                                          ? Colors.white
                                          : Colors.black87,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: isMe
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Text(
                                    _formatTime(msg.sentAt),
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: isMe
                                          ? Colors.white70
                                          : Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),

            // Message Input Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onTapOutside: (_) => FocusScope.of(context).unfocus(),
                      textInputAction: TextInputAction.newline,
                      style: Theme.of(
                        context,
                      ).textTheme.displaySmall?.copyWith(fontSize: 15.sp),
                      decoration: InputDecoration(
                        hintText: "Type your message...",
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintStyle: Theme.of(context).textTheme.displaySmall
                            ?.copyWith(color: kgrey, fontSize: 12.sp),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: kBorderRadius50,
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: kBorderRadius50,
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  adjustWidth(10.w),
                  GestureDetector(
                    onTap: () {
                      // send message logic
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: kprimary,
                        child: const Icon(
                          Iconsax.send_1,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  String _formatTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat.jm().format(dateTime); // e.g. "10:00 AM"
  }
}
