import 'package:crypto/features/coin/coin.dart';
import 'package:crypto/features/crypto_list/crypto_list.dart';

final routes = {
  '/': (contex) => const CryptoList(),
  '/coin': (context) => const CoinScreen(),
};
