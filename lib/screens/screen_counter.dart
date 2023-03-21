import 'package:flutter/material.dart';

class ScreemCounter extends StatefulWidget {
  const ScreemCounter({super.key});

  @override
  State<ScreemCounter> createState() => _ScreemCounterState();
}

class _ScreemCounterState extends State<ScreemCounter> {
  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const myStyle = TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screem'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // alinea en la columna al centro
          crossAxisAlignment:
              CrossAxisAlignment.center, // alinea al centro de la columna
          children: [
            const Text(
              ' numero clicks',
              style: myStyle,
            ),
            Text('$counter', style: myStyle)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustonFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustonFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  const CustonFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_rounded),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
