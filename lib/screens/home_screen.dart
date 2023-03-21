import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const myStyle = TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ABBPBAR'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // alinea en la columna al centro
          crossAxisAlignment:
              CrossAxisAlignment.center, // alinea al centro de la columna
          children: const [
            Text(
              ' numero clicks',
              style: myStyle,
            ),
            Text('0', style: myStyle)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('click button float');
        },
      ),
    );
  }
}
