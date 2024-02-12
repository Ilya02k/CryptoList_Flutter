import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const CryptoCurenciesListApp());
}

class CryptoCurenciesListApp extends StatelessWidget {
  const CryptoCurenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto List',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
        primarySwatch: Colors.amber,
        dividerColor: Colors.red,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.white
            ),
          labelSmall: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w700,
               fontSize: 14
          )
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.purple,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 16))
        ),
        routes: {
          '/':(context) =>  const CryptoListScreen(),
          '/coin':(context) =>  const CryptoCoinScreen()
        },
     //home: const CryptoListScreen(),
    );
  }
}

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto app'),
      ),
      body: ListView.separated (
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {

        const coinName = 'Bitoc btc';

        return  ListTile(
          leading: SvgPicture.asset('assets/svg/money-letter-svgrepo-com.svg', height: 25, width: 25),
          title: Text(
            coinName,
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '2000\$',
             style: theme.textTheme.labelSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.of(context).pushNamed(
              '/coin',
              arguments: coinName);
          },
        );
        }
        ),
    );
  }
}

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {

  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    
    assert(args != null && args is! String, "You should provide correct args");
    // if (args == null) {
    //   //log('Provide args please');
    //   return;
    // }

    // if (args is! String) {
    //   //log("provide string args");
    // }
    
    coinName = args as String;

    setState(() {});

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coinName ?? '...'))
    );
  }
}
