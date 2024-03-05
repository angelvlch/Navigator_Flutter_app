import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const yellowColor = Color.fromARGB(255, 254, 254, 155);

  Widget _createCoin(BuildContext context, int index) {
    return Block();
  }

  Widget _divider(BuildContext context, int index) {
    return Divider(
      color: Theme.of(context).dividerColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crypto app',
        ),
        backgroundColor: yellowColor,
      ),
      body: ListView.separated(
        separatorBuilder: _divider,
        itemCount: 10,
        itemBuilder: _createCoin,
      ),
    );
  }
}

class Block extends StatefulWidget {
  const Block({super.key});

  @override
  State<Block> createState() => _BlockState();
}

class _BlockState extends State<Block> {
  static const yellowColor = Color.fromARGB(255, 254, 254, 155);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: const Icon(
        Icons.monetization_on_outlined,
        color: yellowColor,
        size: 35,
      ),
      trailing: const Icon(
        Icons.arrow_forward_rounded,
      ),
      title: Text(
        'Bitcoin',
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '1000\$',
        style: theme.textTheme.titleSmall,
      ),
    );
  }
}
