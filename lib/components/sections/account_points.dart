import 'package:alubank/components/sections/box_card.dart';
import 'package:alubank/components/sections/color_dot.dart';
import 'package:alubank/components/sections/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pontos da Conta',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const BoxCard(
            boxContent: _AccountPointsContent(),
          ),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text('Pontos totais:'),
        ),
        const Text('3000'),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Text(
          'Objetivos:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(
                  color: ThemeColors.recentActivity['freeDelivery'],
                ),
              ),
              const Text('Entrega grátis: 15000pts'),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(
                color: ThemeColors.recentActivity['streaming'],
              ),
            ),
            const Text('1 mês de streaming: 30000pts'),
          ],
        ),
      ],
    );
  }
}
