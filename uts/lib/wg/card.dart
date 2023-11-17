import 'package:flutter/material.dart';

class MainFeatureCard extends StatelessWidget {
  const MainFeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MainFeatureItem(
            label: 'TopUp',
            icon: 'assets/images/wallet.png',
          ),
          MainFeatureItem(
            label: 'Send Money',
            icon: 'assets/images/mobile-payment.png',
          ),
          MainFeatureItem(
            label: 'Ticket Code',
            icon: 'assets/images/ticket.png',
          ),
          MainFeatureItem(
            label: 'See All',
            icon: 'assets/images/menu.png',
          ),
        ],
      ),
    );
  }
}

class MainFeatureItem extends StatelessWidget {
  const MainFeatureItem({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Container(
            child: Image.asset(
              icon,
              height: 24,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
