import 'package:flutter/material.dart';
import 'package:job_listing_app_ui/constants.dart';
import 'package:job_listing_app_ui/mock_data.dart';
import 'package:job_listing_app_ui/widgets/job_card.dart';

class HomeRecentJobs extends StatelessWidget {
  const HomeRecentJobs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: recentJobs
            .asMap()
            .entries
            .map(
              (item) => Container(
                margin: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3).copyWith(
                  top: item.key == 0 ? kSpacingUnit * 2 : 0,
                  bottom: kSpacingUnit * 2,
                ),
                child: JobCard(data: item.value),
              ),
            )
            .toList(),
      ),
    );
  }
}
