import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class About extends StatefulWidget {
  const About({super.key, required this.title});

  final String title;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

  String assetName = 'assets/icons/pirateSkull.svg';

  void _changePage() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const SizedBox(height: 50, width: 250,
          child: const Text('Pablo Escobar estuvo aquí')),
          SvgPicture.asset(
                  assetName,
                  semanticsLabel: 'PIRATAAAAA',
                  width: 70,
                  height: 70,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: _changePage,
                child: const Text("Volver"),
              )
            ],
          ),
        ],
      ),
    )
    );
  }
}
