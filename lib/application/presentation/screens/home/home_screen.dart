import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';
import 'package:lilac_chat/application/presentation/utils/constant.dart';

import '../../../controllers/auth/auth_controller.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages '),
        actions: [],
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          adjustHieght(10.h),
          SizedBox(
            height: 120.h,

            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => adjustWidth(14),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(radius: 40),
                      Text(
                        'Name',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  );
                },
                itemCount: 10,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onTapUpOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              style: Theme.of(
                context,
              ).textTheme.displaySmall?.copyWith(fontSize: 16.sp),

              decoration: InputDecoration(
                // suffix: Icon(Icons.search, color: kblack, size: 25),
                hintText: 'Search',
                hintStyle: Theme.of(
                  context,
                ).textTheme.displaySmall?.copyWith(fontSize: 14.sp),
                enabledBorder: OutlineInputBorder(
                  borderRadius: kBorderRadius50,
                  borderSide: BorderSide(color: kgrey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: kBorderRadius50,
                  borderSide: BorderSide(color: kprimary, width: 1),
                ),
              ),
            ),
          ),

          adjustHieght(20.h),
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
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Regina Bearden'),
                  leading: CircleAvatar(radius: 30),
                  trailing: Text('10:00 AM'),
                );
              },
              separatorBuilder: (context, index) => adjustHieght(10.h),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
