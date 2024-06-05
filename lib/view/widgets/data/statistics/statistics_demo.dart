import 'package:flutter/material.dart';

import '../../../../incubator/components/data/statistics/statistics.dart';

class StatisticsDemo extends StatelessWidget {
  const StatisticsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style1 = TextStyle(color: Color(0xff419fff));

    return const Wrap(
      spacing: 30,
      children: [
        TolyStatistics(title: "学生人数",value: 2564,enableAnimation: true,enableSeparator: true,),
        TolyStatistics(title: "用户反馈数",value: 255,suffix: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon( Icons.account_circle_rounded,size: 15,color: Colors.grey,),
        ),enableAnimation: true,),
        TolyStatistics(title: "参保比例",value: 20,suffix: Text("/100"),valueStyle: style1,),
      ],
    );
  }
}
