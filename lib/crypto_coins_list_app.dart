
import 'package:crypto_list_coins/router/router.dart';
import 'package:crypto_list_coins/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurenciesListApp extends StatelessWidget {
  const CryptoCurenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto List',
      theme: darkTheme,
      routes: routes,
     //home: const CryptoListScreen(),
    );
  }
}