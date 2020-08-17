import 'package:flutter/material.dart';
import 'package:job_listing_app_ui/constants.dart';

class DetailItem extends StatelessWidget {
  final String data;

  const DetailItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kSpacingUnit * 2),
      child: Text(
        data,
        style: kCaptionTextStyle.copyWith(
          color: kPrimaryTextColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
