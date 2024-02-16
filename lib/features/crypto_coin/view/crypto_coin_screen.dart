
import 'package:flutter/material.dart';

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

    coinName = args as String;

    assert(coinName != null, "VC thinks args are  true null");

    // && args is! String, "You should provide correct args");
    // if (args == null) {
    //   //log('Provide args please');
    //   return;
    // }

    // if (args is! String) {
    //   //log("provide string args");
    // }
    

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