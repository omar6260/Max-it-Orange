import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:max_it_orange/src/constants/app_color.dart';

class MainTransactionsLine extends StatefulWidget {
  const MainTransactionsLine({super.key});

  @override
  State<MainTransactionsLine> createState() => _MainTransactionsLineState();
}

class _MainTransactionsLineState extends State<MainTransactionsLine> {
  final listMenu = [
    {
      'name': 'Seddo',
      'icon': 'ic_barcode.png',
    },
    {
      'name': 'Bonus',
      'icon': 'ic_replay.png',
    },
    {
      'name': 'Sargal',
      'icon': 'ic_chart.png',
    },
    {
      'name': 'Loisirs',
      'icon': 'ic_pix.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Mes services',
              style: TextStyle(
                  color: AppColor.black17,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Text(
              'Voir tout',
              style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.deepOrangeAccent,
            )
          ],
        ),
        const Gap(16),
        SizedBox(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listMenu.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 14),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 241, 241),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey)),
                width: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/${listMenu[index]['icon']}',
                      width: 35,
                      height: 35,
                      color: Colors.deepOrangeAccent,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      listMenu[index]['name']!,
                      style: TextStyle(fontSize: 15, color: AppColor.black17),
                    ),
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
