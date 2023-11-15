import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:max_it_orange/src/constants/app_color.dart';

class YourBalance extends StatefulWidget {
  const YourBalance({super.key});

  @override
  State<YourBalance> createState() => _YourBalanceState();
}

class _YourBalanceState extends State<YourBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 135,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColor.black17),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 371,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.history,
                      color: Colors.white,
                    ),
                    Gap(15),
                    Text(
                      'Historique transactions',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Gap(90),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Accéder',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          Gap(5),
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.deepOrangeAccent,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'data',
                      style: TextStyle(color: Colors.white),
                    ),
                    Gap(75),
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.deepOrangeAccent,
                    ),
                    Gap(10),
                    Icon(
                      Icons.arrow_downward_outlined,
                      color: Colors.deepOrangeAccent,
                    ),
                  ],
                ),
                // Gap(4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Principal',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Gap(4),
                    Text(
                      '- - -',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

