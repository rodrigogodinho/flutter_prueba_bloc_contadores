import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    print('Reconstroi tudo ${_count}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de BLoC'),
      ),
      body: Center(
        child: Text('Valor del contador: ${_count}'),
      ),
      // ignore: prefer_const_constructors
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}
