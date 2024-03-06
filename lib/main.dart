import 'package:crypto/router/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CryptoCurrentList());

class CryptoCurrentList extends StatelessWidget {
  const CryptoCurrentList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        listTileTheme: const ListTileThemeData(
          iconColor: Color.fromARGB(137, 230, 52, 52),
        ),
        dividerColor: Colors.white10,
        scaffoldBackgroundColor: Color.fromRGBO(38, 34, 34, 0.93),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 254, 254, 155),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: TextStyle(
            color: Colors.white60,
            fontSize: 20,
          ),
        ),
      ),
      routes: routes,
    );
  }
}
