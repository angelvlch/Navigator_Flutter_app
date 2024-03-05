import 'package:flutter/material.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({super.key});

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  static const yellowColor = Color.fromARGB(255, 254, 254, 155);

  Widget _createCoin(BuildContext context, int index) {
    return BuilListTile();
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

class BuilListTile extends StatefulWidget {
  const BuilListTile({super.key});

  @override
  State<BuilListTile> createState() => _BuilListTileState();
}

class _BuilListTileState extends State<BuilListTile> {
  static const yellowColor = Color.fromARGB(255, 254, 254, 155);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const CoinScreen()));
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

class CoinScreen extends StatelessWidget {
  const CoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bitcoin',
        ),
      ),
    );
  }
}
