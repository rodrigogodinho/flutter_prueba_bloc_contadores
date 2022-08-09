import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prueba_bloc_contadores/app/blocs/homepagebloc.dart';

class GroupActionComponent extends StatelessWidget {
  const GroupActionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.getBloc<HomePageBLoC>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: bloc.decrement,
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: bloc.increment,
        ),
      ],
    );
  }
}
