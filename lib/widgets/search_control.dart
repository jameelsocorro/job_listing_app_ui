import 'package:flutter/material.dart';
import 'package:job_listing_app_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchControl extends StatelessWidget {
  const SearchControl({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit * 4,
      decoration: BoxDecoration(
        color: kSilverColor,
        borderRadius: BorderRadius.circular(kSpacingUnit * 3),
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(width: kSpacingUnit * 2),
            SvgPicture.asset(
              'assets/icons/search.svg',
              height: 15.sp,
              width: 15.sp,
            ),
            SizedBox(width: kSpacingUnit),
            Text(
              'Search job titles, companies',
              style: kBodyTextStyle.copyWith(
                color: kSecondaryTextColor,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/icons/slider_icon.svg',
              height: 15.sp,
              width: 15.sp,
            ),
            SizedBox(width: kSpacingUnit * 2),
          ],
        ),
      ),
    );
  }
}
