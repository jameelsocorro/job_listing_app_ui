import 'package:flutter/material.dart';
import 'package:job_listing_app_ui/constants.dart';
import 'package:job_listing_app_ui/widgets/search_control.dart';
import 'package:job_listing_app_ui/widgets/search_tag.dart';

class HomeSubHeader extends StatelessWidget {
  const HomeSubHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: SearchControl(),
              ),
              SizedBox(width: kSpacingUnit * 2),
              CircleAvatar(
                radius: kSpacingUnit * 2,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ],
          ),
          SizedBox(height: kSpacingUnit * 2),
          SearchTag(tag: 'Singapore'),
        ],
      ),
    );
  }
}
