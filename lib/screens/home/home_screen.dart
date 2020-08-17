import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_listing_app_ui/constants.dart';
import 'package:job_listing_app_ui/screens/home/home_content.dart';
import 'package:job_listing_app_ui/screens/home/home_header.dart';
import 'package:job_listing_app_ui/screens/home/home_sub_header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kSpacingUnit * 6),
            HomeHeader(),
            SizedBox(height: kSpacingUnit * 3),
            HomeSubHeader(),
            SizedBox(height: kSpacingUnit * 3),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}
