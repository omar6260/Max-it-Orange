import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:max_it_orange/src/constants/app_color.dart';
import 'package:max_it_orange/src/constants/app_size.dart';
import 'package:max_it_orange/src/features/home/domain/take_advantage_model.dart';

class CarouselTakeAdvantage extends StatefulWidget {
  const CarouselTakeAdvantage({super.key, required this.title});
  final String title;

  @override
  State<CarouselTakeAdvantage> createState() => _CarouselTakeAdvantageState();
}

class _CarouselTakeAdvantageState extends State<CarouselTakeAdvantage> {
  final List<TakwAdvantage> listItems = [
    TakwAdvantage(
      image: 'img_woman_shopping.png',
      title: 'Recharger crédit',
      description: 'Achat crédit',
    ),
    TakwAdvantage(
      image: 'img_good_humoured_woman.png',
      title: 'Abonnement wido',
      description: 'Abonnement wido',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              color: AppColor.black17,
              fontSize: context.percentHeight(0.0195),
              fontWeight: FontWeight.bold),
        ),
        const Gap(9),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listItems.length,
            itemBuilder: (context, index) {
              return Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.only(left: index == 0 ? 0 : 12),
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.amber),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 114,
                      color: Colors.black,
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
