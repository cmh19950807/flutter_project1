import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted});
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : const Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(code,
                        style: TextStyle(
                            color: isInverted
                                ? _blackColor.withOpacity(0.8)
                                : Colors.white.withOpacity(0.8),
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 1.8,
              child: Transform.translate(
                offset: const Offset(-5, 13),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
