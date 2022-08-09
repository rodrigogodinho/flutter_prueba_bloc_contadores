import 'package:flutter/material.dart';
import 'package:flutter_prueba_bloc_contadores/app/blocs/homepagebloc.dart';
import 'package:flutter_prueba_bloc_contadores/app/components/groupactioncomponent.dart';

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
    bloc = HomePageBLoC.instance;
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
        floatingActionButton: GroupActionComponent());
  }
}
