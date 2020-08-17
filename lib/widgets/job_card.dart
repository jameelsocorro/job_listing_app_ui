import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_listing_app_ui/constants.dart';
import 'package:job_listing_app_ui/model/job.dart';

class JobCard extends StatelessWidget {
  final Job data;

  const JobCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.w,
      padding: EdgeInsets.all(kSpacingUnit * 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(kSpacingUnit * 3),
          boxShadow: [kCardShadow]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                data.imgUrl,
                height: 30.sp,
                width: 30.sp,
              ),
              SizedBox(width: kSpacingUnit),
              Text(
                data.companyName,
                style: kCardTitleTextStyle,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/icons/heart_icon.svg',
                height: 20.sp,
                width: 20.sp,
              ),
            ],
          ),
          const Spacer(),
          Text(
            data.position,
            style: kSubTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit * 0.5),
          Text(
            data.location,
            style: kCaptionTextStyle,
          ),
        ],
      ),
    );
  }
}
