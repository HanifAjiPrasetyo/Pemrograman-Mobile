import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: const Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItem(label: 'Pulsa/Data', icon: 'assets/images/wifi.png'),
            CategoryItem(
                label: 'Electricity', icon: 'assets/images/energy.png'),
            CategoryItem(
                label: 'BPJS', icon: 'assets/images/health-insurance.png'),
            CategoryItem(
                label: 'mgames', icon: 'assets/images/game-controller.png'),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItem(
                label: 'Cable TV & Internet',
                icon: 'assets/images/antenna.png'),
            CategoryItem(label: 'PDAM', icon: 'assets/images/drop.png'),
            CategoryItem(
                label: 'Kartu Uang Elektronik',
                icon: 'assets/images/e-wallet.png'),
            CategoryItem(label: 'More', icon: 'assets/images/more.png'),
          ],
        ),
      ]),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(children: [
        Image.asset(
          icon,
          height: 40,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
    );
  }
}
