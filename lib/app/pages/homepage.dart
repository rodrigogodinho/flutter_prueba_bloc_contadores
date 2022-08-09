import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prueba_bloc_contadores/app/blocs/homepagebloc.dart';
import 'package:flutter_prueba_bloc_contadores/app/components/groupactioncomponent.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.getBloc<HomePageBLoC>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de BLoC'),
      ),
      body: Center(
        child: StreamBuilder<Object>(
            stream: bloc.outCount,
            builder: (context, snapshot) {
              return Text('Valor del contador: ${snapshot.data}');
            }),
      ),
      // ignore: prefer_const_constructors
      floatingActionButton: GroupActionComponent(),
    );
  }
}
