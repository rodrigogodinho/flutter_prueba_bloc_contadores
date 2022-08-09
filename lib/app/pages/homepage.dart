// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_prueba_bloc_contadores/app/blocs/homepagebloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageBLoC? bloc;

  @override
  void initState() {
    super.initState();
    bloc = HomePageBLoC();
  }

  @override
  void dispose() {
    bloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Reconstroi tudo');
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de BLoC'),
      ),
      body: Center(
        child: StreamBuilder<Object>(
            stream: bloc?.outCount,
            initialData: 0,
            builder: (context, snapshot) {
              return Text('Valor del contador: ${snapshot.data}');
            }),
      ),
      // ignore: prefer_const_constructors
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: bloc?.decrement,
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: bloc?.increment,
          ),
        ],
      ),
    );
  }
}
