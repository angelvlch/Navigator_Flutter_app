import 'dart:developer';

import 'package:flutter/material.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({super.key});

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  static const yellowColor = Color.fromARGB(255, 254, 254, 155);
  List<String> coins = [
    'Ethereum',
    'Bitcoint',
    'Litecoin',
    'Tether',
    'Stellar Lumens',
    'Binance Coin',
    'Cardano',
    'Solana'
  ];

  Widget _createCoin(BuildContext context, int index) {
    return BuilListTile(nameCoin: coins[index]);
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
        itemCount: coins.length,
        itemBuilder: _createCoin,
      ),
    );
  }
}

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

class CoinScreen extends StatefulWidget {
  const CoinScreen({super.key});

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'error');
    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   Text(coinName ?? '....'),
        ),
    );
  }
}
