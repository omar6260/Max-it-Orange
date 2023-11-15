import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:max_it_orange/src/constants/app_color.dart';

class YourPoint extends StatefulWidget {
  const YourPoint({super.key});

  @override
  State<YourPoint> createState() => _YourPointState();
}

class _YourPointState extends State<YourPoint> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColor.black17),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              'Sargal',
              style: TextStyle(color: Colors.white),
            ),
            Gap(10),
            Text(
              '48 Pts',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.deepOrangeAccent,
                ),
                Gap(10),
                Icon(
                  Icons.arrow_right,
                  color: Colors.deepOrangeAccent,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
