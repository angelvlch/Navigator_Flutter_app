import 'package:flutter/material.dart';

class BuilListTile extends StatelessWidget {
  const BuilListTile({super.key, required this.nameCoin});

  final String nameCoin;
  static const yellowColor = Color.fromARGB(255, 254, 254, 155);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          // arguments: nameCoin,
        );
      },
      leading: const Icon(
        Icons.monetization_on_outlined,
        color: yellowColor,
        size: 35,
      ),
      trailing: const Icon(
        Icons.arrow_forward_rounded,
      ),
      title: Text(
        nameCoin,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '1000\$',
        style: theme.textTheme.titleSmall,
      ),
    );
  }
}
