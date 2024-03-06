import 'package:crypto/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
