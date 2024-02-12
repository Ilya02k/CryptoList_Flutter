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
        //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
        //primarySwatch: Colors.amber,
        dividerColor: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
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
        ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.separated (
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset('assets/svg/money-letter-svgrepo-com.svg', height: 25, width: 25),
          title: Text(
            'Bitcoin',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '2000\$',
             style: theme.textTheme.labelSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        )),

    );
  }
}
