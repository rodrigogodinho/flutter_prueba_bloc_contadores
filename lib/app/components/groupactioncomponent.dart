import 'package:flutter/material.dart';
import 'package:flutter_prueba_bloc_contadores/app/blocs/homepagebloc.dart';

class GroupActionComponent extends StatefulWidget {
  const GroupActionComponent({Key? key}) : super(key: key);

  @override
  State<GroupActionComponent> createState() => _GroupActionComponentState();
}

class _GroupActionComponentState extends State<GroupActionComponent> {
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
    return Column(
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
    );
  }
}
