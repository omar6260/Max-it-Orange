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
      image: 'img4.png',
      title: 'Recharger crédit',
      description: 'Achat crédit',
    ),
    TakwAdvantage(
      image: 'img5.png',
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
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listItems.length,
            itemBuilder: (context, index) {
              return Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.only(left: index == 0 ? 0 : 12),
                width: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/${listItems[index].image}',
                      height: 90,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, top: 10),
                      child: Text(
                        listItems[index].title,
                        style: TextStyle(
                            color: AppColor.black17,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, top: 2),
                      child: Row(
                        children: [
                          Text(
                            listItems[index].description,
                            style: const TextStyle(
                                color: Colors.deepOrange, fontSize: 12),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_right,
                            color: Colors.deepOrange,
                          )
                        ],
                      ),
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
