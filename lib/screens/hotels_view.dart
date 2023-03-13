import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ]),
      width: size.width * 0.6,
      height: 350,
      child: Column(children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Styles.primaryColor,
            image:  DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/${hotel['image']}"),
            ),
          ),
        ),
        const Gap(10),
        Text(
          hotel['place'],
          style: Styles.headlineStyle2.copyWith(
            color: Styles.kakiColor,
          ),
        ),
        const Gap(5),
        Text(
          hotel['destination'],
          style: Styles.headlineStyle3.copyWith(
            color: Colors.white,
          ),
        ),
        const Gap(8),
        Text(
          "\$${hotel['price']}/night",
          style: Styles.headlineStyle1.copyWith(
            color: Styles.kakiColor,
          ),
        ),
      ]),
    );
  }
}
