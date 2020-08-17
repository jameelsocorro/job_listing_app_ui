import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_listing_app_ui/constants.dart';
import 'package:job_listing_app_ui/mock_data.dart';
import 'package:job_listing_app_ui/model/job.dart';
import 'package:job_listing_app_ui/screens/detail/detail_screen.dart';
import 'package:job_listing_app_ui/widgets/job_card.dart';

class HomePopularJobs extends StatefulWidget {
  @override
  _HomePopularJobsState createState() => _HomePopularJobsState();
}

class _HomePopularJobsState extends State<HomePopularJobs> {
  int _cardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.w,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 130.w,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: _cardIndex,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _cardIndex = index;
            });
          },
        ),
        itemCount: popularJobs.length,
        itemBuilder: (BuildContext context, int index) => Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: kSpacingUnit),
          child: JobCard(data: popularJobs[index]),
        ),
      ),
    );
  }
}
